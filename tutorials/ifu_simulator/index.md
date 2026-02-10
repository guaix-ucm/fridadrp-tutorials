# Running the IFU simulator

While not part of the FRIDA data reduction pipeline, the
`fridadrp-ifu_simulator` script
was created with the intention of generating simulated images to begin the
development and testing of reduction recipes.

After installing **megardrp**, the IFU simulator should be available in your
system:

```{include} files/version_fridadrp-ifu_simulator.md
```

The script accepts a number of arguments, which are displayed when invoking the
script name without any parameter:

```{include} files/help1_fridadrp-ifu_simulator.md
```

The simulator uses a file called *scene* as its basic input, which contains
information about the image to be simulated. This file must be written in YAML
format, which allows the user to conveniently define the geometry and type of
spectrum of the astronomical sources to be simulated.

```{toctree}
:maxdepth: 2

initial_example
script_arguments
scene_yaml
examples
```
