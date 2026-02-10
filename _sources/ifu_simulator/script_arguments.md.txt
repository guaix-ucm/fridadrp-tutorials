# Script arguments

The `megaradrp-ifu_simulator` accepts a number of arguments. A quick list and
explanation can be easily obtained using the `--help` (`-h` for short)
argument.

```{include} files/help2_fridadrp-ifu_simulator.md
```

An additional description of the different arguments is provided below.

```{warning}
As the code is still under development, some of the arguments shown below
are not fully functional and only support some of the possible values. In
such cases, an explanatory note is included.
```

(--scene)=

## <code>--scene &lt;string&gt;</code>

External YAML file where the user defines one or several sources to
be simulated. Each source has an associated spectrum.

(--flux_factor)=

## <code>--flux_factor &lt;string&gt;</code>

Multiplicative factor (float number) to be applied to the number of photons
defined in the scene file. The resulting number is rounded to an integer value.

(--grating)=

## <code>--grating &lt;string&gt;</code>

Grating name. It should be one of the following: `low-zJ`, `low-JH`,
`medium-z`, `medium-J`, `medium-H`, `medium-K`, `high-H` or
`high-K`.

**Note**: at present only the `medium-K` has been properly defined.

(--scale)=

## <code>--scale &lt;float&gt;</code>

Camera scale. It should be one of the following: `fine` (0.01 arcsec/pixel),
`medium` (0.02 arcsec/pixel) or `coarse` (0.04 arcsec/pixel).

(--ra_dec_teles)=

## <code>--ra_teles &lt;float&gt;</code>, <code>--dec_teles &lt;float&gt;</code>

Central coordinates (right ascension and declination) of the Field of View. By
default these values are set to :math:`{\rm RA}=0.0~{\rm deg}` and 
:math:`{\rm DEC}=0.0~{\rm deg}`. These coordinates must be expressed in decimal
degrees.

(--delta_ra_dec_teles)=

## <code>--delta_ra_teles_arcsec &lt;float&gt;</code>, <code>--delta_dec_teles_arcsec &lt;float&gt;</code>

Additional offset in right ascension and declination in arcseconds. These
parameters allow simulating small shifts in the telescope pointing using units
closer to the FRIDA IFU's field of view.

(--seeing_fwhm_psf)=

## <code>--seeing_fwhm_arcsec &lt;float&gt;</code>, <code>--seeing_psf &lt;string&gt;</code>

FWHM of the seeing, in arcseconds, and mathematical function to reproduce the
seeing. 

**Note**: so far only `--seeing_psf gaussian` has been defined.

(--instrument_pa_deg)=

## <code>--instrument_pa_deg &lt;float&gt;</code>

Instrument position angle (degrees), measured North through East.

(--airmass)=

## <code>--airmass &lt;float&gt;</code>

Airmass. If this value is > 1.0, it is employed to compute the atmospheric
differential refraction (ADR) as a function of wavelength, using Eq. (1)-(3) in
[Filippenko
(1982)](https://ui.adsabs.harvard.edu/abs/1982PASP...94..715F/abstract).

The ADR effect is computed determining the difference in the refraction angle
of each simulated photon computed at its simulated wavelength and at the
central wavelength of the simulated data cube.

By default `--airmass 1.0` and no ADR effect is computed unless a different
value is specified.

(--parallactic_angle_deg)=

## <code>--parallactic_angle_deg &lt;float&gt;</code>

Parallactic angle (degrees). This value is employed to compute the atmospheric
differential refraction when airmass > 1.0 (see above).

(--noversampling_whitelight)=

## <code>--noversampling_whitelight &lt;integer&gt;</code>

Oversampling factor to generate one of the white-image views of the simulated
3D data cube. The simulator generates two versions of the white-image view:

- file `test_ifu_white2D_method0_os1.fits`: 2D projection of the 3D data cube
  using `NAXIS1=64` and `NAXIS2=60`. This sampling is close to the actual
  sampling at the Hawaii detector, in which each slice spreads ~64 pixels in
  the spatial direction, and 2 pixels in the wavelength axis. Since the FRIDA's
  IFU is covered by 30 slices, this means that there are :math:`2 \times 30 =
  60` pixels in direction of the IFU perpendicular to the slices.

- file `test_ifu_white2D_method0_os10.fits`: oversampled 2D projection of the
  3D data cube, using the chosen oversampling number. By default
  `--noversampling_whitelight 10` is employed, which means that each IFU
  pixel is subdivided in :math:`10 \times 10` subpixels. In this case, the
  while-light image dimension is given by `NAXIS1=640` and `NAXIS2=600`.
  This version of the white-light image can help to check how well a
  combination of IFU exposures are coadded when using a dithering technique
  with non-integer offsets (in pixel units).

(--atmosphere_transmission)=

## <code>--atmosphere_transmission &lt;[default] | none&gt;</code>

The default value makes use of the predicted transmission fraction of the
atmosphere obtained with [SKYCALC Sky Model
Calculator](https://www.eso.org/observing/etc/bin/gen/form?INS.MODE=swspectr+INS.NAME=SKYCALC)
(version 2.0.9) using the default input parameters for the model. The
prediction is stored in the file `skycalc_800-2600nm_step0_01nm.fits`, which
is one of the auxiliary files automatically downloaded in a cache directory the
first time `fridadrp-ifu_simulator` is executed. This file contains not only
the atmosphere transmission, but also the sky emission radiance flux (in
ph/s/m2/micron/arcsec2), for the wavelength range from 800 to 2600 nm, with a
sampling of 0.01 nm.

A plot of the atmosphere transmission data is shown below.

```{figure} plot_transmission_fraction.png
```

When executing `fridadrp-ifu_simulator`, the atmospheric transmission
probability at the wavelength of each simulated photon is evaluated, and a
random number between 0 and 1 is generated in each case. If the obtained number
is greater than the transmission probability, the photon is discarded.

(--rnoise)=

## <code>--rnoise &lt;float&gt;</code>

Readout noise (positive number or zero) to be added to the simulated data (in
ADU). By default this parameter is set to zero.

(--flatpix2pix)=

## <code>--flatpix2pix &lt;[default] | none&gt;</code>

The default value makes use of a predefined flatfield image stored in one of
the auxiliary files automatically downloaded in a cache directory the first
time `fridadrp-ifu_simulator` is executed. The name of this type of file has
the form `simulated_flat_pix2pix_<grating>.fits`, where `<grating>` is the
grating name.

(--spectral_blurring_pixel)=

## <code>--spectral_blurring_pixel &lt;float&gt;</code>

Extra degradation to be introduced in the spectral direction to each simulated
photon. In particular, a Gaussian random shift is applied (in pixel units) when
converting the original 3D data cube into the original 2D RSS image. The value
of this parameter provides the standard deviation of the Gaussian distribution.
By default, `spectral_blurring_pixel = 1.0`.

(--seed)=

## <code>--seed &lt;integer&gt;</code>

Seed to initialize the [Numpy Random
Generator](https://numpy.org/doc/stable/reference/random/generator.html). By
default is set to a particular integer sequence (`1234`).

(--prefix_intermediate_FITS)=

## <code>--prefix_intermediate_FITS &lt;string&gt;</code>

Prefix to be added before the name of the FITS files generated during the
simulator execution. By default this string is `test`. Note that an
underscore `_` symbol is also added between this prefix and the filename.

(--stop_after_ifu_3D_method0)=

## <code>--stop_after_ifu_3D_method0</code>

If this argument is present, the simulator stops just after generating
the file `test_ifu_3D_method0.fits`. This is useful for debugging
purposes.

(--verbose)=

## <code>--verbose</code>

If this argument is present, additional information is displayed in the
terminal while executing the code.

(--plots)=

## <code>--plots</code>

When this argument is present, intermediate plots are also displayed.

(--echo)=

## <code>--echo</code>

Display in the terminal the command line employed to invoke the execution
of the simulator.

(--version)=

## <code>--version</code>

Display the code version number.
