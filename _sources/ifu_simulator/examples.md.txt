# Some scene examples

Below are some examples of 'scene' files as well as the resulting simulated
images.

## Example 1: selected number of slices


Let's start with a simple example, simulating a flat illumination of slices 1
through 15 in the IFU field of view. Here we are using the file
{download}`scene01.yaml <scene01/scene01.yaml>`.

```{literalinclude} scene01/scene01.yaml
:language: yaml
```

```{include} scene01/example_results.txt
```

## Example 2: collection of Gaussian objects

Here we are using the file {download}`scene02.yaml
<scene02/scene02.yaml>`.

```{literalinclude} scene02/scene02.yaml
:language: yaml
```

```{include} scene02/example_results.txt
```

## Example 3: M51-like galaxy

Here we are using the file {download}`scene03.yaml
<scene03/scene03.yaml>`. 

```{literalinclude} scene03/scene03.yaml
:language: yaml
```

We aim to simulate a galaxy resembling the morphology of Messier 51. To achieve
this, we generated a ${15 \times 15}~{\rm arcmin}^2$ image using the [ESO
Online Digitized Sky Survey](https://archive.eso.org/dss/dss). The
corresponding file is
[m51_dss1.fits](https://guaix.fis.ucm.es/data/fridadrp/m51_dss1.fits>).

```{include} scene03/example_results.txt
```

