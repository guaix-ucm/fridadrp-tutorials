# Running a simple test recipe

The following example describes how to employ the `fridadrp-ifu_simulator`
script to generate a couple of simple exposures (target and sky) and execute a
very simple reduction recipe.

## Initialize the file tree

Download the following file
[fridadrp_initial_tree_test1.tgz](https://guaix.fis.ucm.es/data/fridadrp/fridadrp_initial_tree_test1.tgz)

```{code-block} console
:class: no-copybutton

(venv_frida) $ mkdir test1
(venv_frida) $ cd test1

# copy here the downloaded tgz file

(venv_frida) $ tar zxvf fridadrp_initial_tree_test1.tgz
...
...
(venv_frida) $ rm fridadrp_initial_tree_test1.tgz
(venv_frida) $ tree
```

```{code-block}
:class: my-special-block no-copybutton

.
├── control.yaml
├── data
│   ├── master_bpm_zeros.fits
│   ├── master_dark_zeros.fits
│   └── master_flat_ones.fits
├── scene_sky.yaml
├── scene_target.yaml
└── test1.yaml
```

## Execute the simulator

Simulate the target exposure

```{code-block} console

(venv_frida) $ fridadrp-ifu_simulator \
 --scene scene_target.yaml \
 --grating medium-K \
 --scale fine \
 --prefix_intermediate_FITS target
```

```{code-block}
:class: my-special-block no-copybutton

...
...
Saving file: target_ifu_white2D_method0_os10.fits
Saving file: target_ifu_white2D_method0_os1.fits
Saving file: target_ifu_3D_method0.fits
Saving file: target_rss_2D_method0.fits
Saving file: target_detector_2D_method0.fits
Saving file: target_rss_2D_method1.fits
Saving file: target_ifu_3D_method1.fits
```

Copy the simulated detector image in the `data/` subdirectory

```{code-block} console

(venv_frida) $ cp target_detector_2D_method0.fits data 
```

<!-- numina-ximshow target_detector_2D_method0.fits --geometry 800,640,0,0
--cbar_orientation vertical --z1z2 "[0, 5]" -->
```{image} test1/target_detector_2D_method0.png
:width: 100%
:alt: image target_detector_2D_method0.png
```

Simulate the sky exposure

```{code-block} console

(venv_frida) $ fridadrp-ifu_simulator \
  --scene scene_sky.yaml \
  --grating medium-K \
  --scale fine \
  --prefix_intermediate_FITS sky
```

```{code-block}
:class: my-special-block no-copybutton

...
...
Saving file: sky_ifu_white2D_method0_os10.fits
Saving file: sky_ifu_white2D_method0_os1.fits
Saving file: sky_ifu_3D_method0.fits
Saving file: sky_rss_2D_method0.fits
Saving file: sky_detector_2D_method0.fits
Saving file: sky_rss_2D_method1.fits
Saving file: sky_ifu_3D_method1.fits
```

Copy the simulated detector image in the `data/` subdirectory

```{code-block} console
(venv_frida) $ cp sky_detector_2D_method0.fits data 
```

<!-- numina-ximshow sky_detector_2D_method0.fits --geometry 800,640,0,0
--cbar_orientation vertical --z1z2 "[0, 5]" -->
```{image} test1/sky_detector_2D_method0.png
:width: 100%
:alt: image sky_detector_2D_method0.png
```

## Running the reduction recipe

````{note}

Remember that the ``numina`` script is the interface with GTC pipelines. 
In order to execute PyEmir recipes you should type something like:

```{code-block}
(venv_frida) $ numina run <observation_result_file.yaml> -r <requirements_file.yaml>
```

where `<observation_result_file.yaml>` is an observation result file in 
YAML format, and `<requirements_files.yaml>` is a requirements file, also 
in YAML format.

YAML is a human-readable data serialization language (for details see 
[YAML
Syntax](https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html)).
````

We are going to execute **numina** using the observation result file
`test1.yaml`.

```{code-block} console
(venv_frida) $ cat test1.yaml 
```

```{code-block} yaml
:class: my-special-block no-copybutton

id: _test1
instrument: FRIDA
mode: test1
frames:
  - target_detector_2D_method0.fits
  - sky_detector_2D_method0.fits
enabled: True
```
   
```{code-block} console
(venv_frida) $ numina run test1.yaml -r control.yaml
```

```{code-block}
:class: my-special-block no-copybutton

...
...
```

After the execution of the previous command, two subdirectories should have
appeared, with the syntax `obsid<id>_<work/results>`. In this particular
example, these two subdirectories are `obsid_test1_work` and
`obsid_test1_result`. 

All the images (scientific and calibrations) involved in the reduction of a
particular block of the observation result file are copied into the `...work`
subdirectories in order to preserve the original files. The results of the
execution of the reduction recipe are stored in the corresponding
`...results` subdirectory.

```{code-block} console
(venv_frida) $ tree obsid_test1_*
```

```{code-block}
:class: my-special-block no-copybutton

obsid_test1_results
├── processing.log
├── reduced_image.fits
├── result.json
└── task.json
obsid_test1_work
├── index.pkl
├── sky_detector_2D_method0.fits -> /Users/cardiel/test1/data/sky_detector_2D_method0.fits
└── target_detector_2D_method0.fits -> /Users/cardiel/test1/data/target_detector_2D_method0.fits
```

<!-- numina-ximshow obsid_test1_results/reduced_image.fits --geometry
800,640,0,0 --cbar_orientation vertical --z1z2 "[0, 5]" -->
```{image} test1/reduced_image.png
:width: 100%
:alt: image reduced_image.png
```

