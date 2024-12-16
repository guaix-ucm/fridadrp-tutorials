.. role:: raw-html(raw)
   :format: html

Script arguments
================

The ``megaradrp-ifu_simulator`` accepts a number of arguments. A quick list and
explanation can be easily obtained using the ``--help`` (``-h`` for short)
argument.

.. code-block:: console

   (venv_frida) $ fridadrp-ifu_simulator --help
   usage: fridadrp-ifu_simulator [-h] [--scene SCENE]
                                 [--grating {low-zJ,low-JH,medium-z,medium-J,medium-H,medium-K,high-H,high-K}]
                                 [--scale {fine,medium,coarse}]
                                 [--ra_teles_deg RA_TELES_DEG]
                                 [--dec_teles_deg DEC_TELES_DEG]
                                 [--delta_ra_teles_arcsec DELTA_RA_TELES_ARCSEC]
                                 [--delta_dec_teles_arcsec DELTA_DEC_TELES_ARCSEC]
                                 [--seeing_fwhm_arcsec SEEING_FWHM_ARCSEC]
                                 [--seeing_psf {gaussian}]
                                 [--instrument_pa_deg INSTRUMENT_PA_DEG]
                                 [--airmass AIRMASS]
                                 [--parallactic_angle_deg PARALLACTIC_ANGLE_DEG]
                                 [--noversampling_whitelight NOVERSAMPLING_WHITELIGHT]
                                 [--atmosphere_transmission {default,none}]
                                 [--rnoise RNOISE] 
                                 [--flatpix2pix {default,none}]
                                 [--spectral_blurring_pixel SPECTRAL_BLURRING_PIXEL]
                                 [--seed SEED]
                                 [--prefix_intermediate_FITS PREFIX_INTERMEDIATE_FITS]
                                 [--stop_after_ifu_3D_method0] [-v] [--plots]
                                 [--echo] [--version]
   
   description: simulator of FRIDA IFU images (0.1.dev98+g0c982ee)
   
   options:
     -h, --help            show this help message and exit
     --scene SCENE         YAML scene file name
     --grating {low-zJ,low-JH,medium-z,medium-J,medium-H,medium-K,high-H,high-K}
                           Grating name
     --scale {fine,medium,coarse}
                           Scale
     --ra_teles_deg RA_TELES_DEG
                           Telescope central RA (deg)
     --dec_teles_deg DEC_TELES_DEG
                           Telescope central DEC (deg)
     --delta_ra_teles_arcsec DELTA_RA_TELES_ARCSEC
                           Offset in RA (arcsec)
     --delta_dec_teles_arcsec DELTA_DEC_TELES_ARCSEC
                           Offset in DEC (arcsec)
     --seeing_fwhm_arcsec SEEING_FWHM_ARCSEC
                           Seeing FWHM (arcsec)
     --seeing_psf {gaussian}
                           Seeing PSF
     --instrument_pa_deg INSTRUMENT_PA_DEG
                           Instrument Position Angle (deg)
     --airmass AIRMASS     Airmass
     --parallactic_angle_deg PARALLACTIC_ANGLE_DEG
                           Parallactic angle (deg)
     --noversampling_whitelight NOVERSAMPLING_WHITELIGHT
                           Oversampling white light image
     --atmosphere_transmission {default,none}
                           Atmosphere transmission
     --rnoise RNOISE       Readout noise standard deviation (ADU)
     --flatpix2pix {default,none}
                           Pixel-to-pixel flat field
     --spectral_blurring_pixel SPECTRAL_BLURRING_PIXEL
                           Spectral blurring when converting the original 3D data
                           cube to the original 2D RSS (in pixel units)
     --seed SEED           Seed for random number generator
     --prefix_intermediate_FITS PREFIX_INTERMEDIATE_FITS
                           Prefix for intermediate FITS files
     --stop_after_ifu_3D_method0
                           Stop after computing ifu_3D_method0 image
     -v, --verbose         increase program verbosity
     --plots               Plot intermediate results
     --echo                Display full command line
     --version             Display version

An additional description of the different arguments is provided below.

.. warning::

   As the code is still under development, some of the arguments shown below
   are not fully functional and only support some of the possible values. In
   such cases, an explanatory note is included.

.. _--scene:

:raw-html:`<code>--scene &lt;string&gt;</code>`
-----------------------------------------------

External YAML file where the user defines one or several sources to
be simulated. Each source has an associated spectrum.

.. _--grating:

:raw-html:`<code>--grating &lt;string&gt;</code>`
-------------------------------------------------

Grating name. It should be one of the following: ``low-zJ``, ``low-JH``,
``medium-z``, ``medium-J``, ``medium-H``, ``medium-K``, ``high-H`` or
``high-K``.

**Note**: at present only the ``medium-K`` has been properly defined.

.. _--scale:

:raw-html:`<code>--scale &lt;float&gt;</code>`
----------------------------------------------

Camera scale. It should be one of the following: ``fine`` (0.01 arcsec/pixel),
``medium`` (0.02 arcsec/pixel) or ``coarse`` (0.04 arcsec/pixel).

.. _--ra_dec_teles:

:raw-html:`<code>--ra_teles &lt;float&gt;</code>, <code>--dec_teles &lt;float&gt;</code>`
-----------------------------------------------------------------------------------------

Central coordinates (right ascension and declination) of the Field of View. By
default these values are set to :math:`{\rm RA}=0.0~{\rm deg}` and 
:math:`{\rm DEC}=0.0~{\rm deg}`. These coordinates must be expressed in decimal
degrees.


.. _--delta_ra_dec_teles:

:raw-html:`<code>--delta_ra_teles_arcsec &lt;float&gt;</code>, <code>--delta_dec_teles_arcsec &lt;float&gt;</code>`
-------------------------------------------------------------------------------------------------------------------

Additional offset in right ascension and declination in arcseconds. These
parameters allow simulating small shifts in the telescope pointing using units
closer to the FRIDA IFU's field of view.

.. _--seeing_fwhm_psf:

:raw-html:`<code>--seeing_fwhm_arcsec &lt;float&gt;</code>, <code>--seeing_psf &lt;string&gt;</code>`
-----------------------------------------------------------------------------------------------------

FWHM of the seeing, in arcseconds, and mathematical function to reproduce the
seeing. 

**Note**: so far only ``--seeing_psf gaussian`` has been defined.

.. _--instrument_pa_deg:

:raw-html:`<code>--instrument_pa_deg &lt;float&gt;</code>`
----------------------------------------------------------

Instrument position angle (degrees), measured North through East.

.. _--airmass:

:raw-html:`<code>--airmass &lt;float&gt;</code>`
------------------------------------------------

Airmass. If this value is > 1.0, it is employed to compute the atmospheric
differential refraction (ADR) as a function of wavelength, using Eq. (1)-(3) in
`Filippenko (1982)
<https://ui.adsabs.harvard.edu/abs/1982PASP...94..715F/abstract>`_.

The ADR effect is computed determining the difference in the refraction angle
of each simulated photon computed at its simulated wavelength and at the
central wavelength of the simulated data cube.

By default ``--airmass 1.0`` and no ADR effect is computed unless a different
value is specified.

.. _--parallactic_angle_deg:

:raw-html:`<code>--parallactic_angle_deg &lt;float&gt;</code>`
--------------------------------------------------------------

Parallactic angle (degrees). This value is employed to compute the atmospheric
differential refraction when airmass > 1.0 (see above).

.. _--noversampling_whitelight:

:raw-html:`<code>--noversampling_whitelight &lt;integer&gt;</code>`
-------------------------------------------------------------------

Oversampling factor to generate one of the white-image views of the simulated
3D data cube. The simulator generates two versions of the white-image view:

- file ``test_ifu_white2D_method0_os1.fits``: 2D projection of the 3D data cube
  using ``NAXIS1=64`` and ``NAXIS2=60``. This sampling is close to the actual
  sampling at the Hawaii detector, in which each slice spreads ~64 pixels in
  the spatial direction, and 2 pixels in the wavelength axis. Since the FRIDA's
  IFU is covered by 30 slices, this means that there are :math:`2 \times 30 =
  60` pixels in direction of the IFU perpendicular to the slices.

- file ``test_ifu_white2D_method0_os10.fits``: oversampled 2D projection of the
  3D data cube, using the chosen oversampling number. By default
  ``--noversampling_whitelight 10`` is employed, which means that each IFU
  pixel is subdivided in :math:`10 \times 10` subpixels. In this case, the
  while-light image dimension is given by ``NAXIS1=640`` and ``NAXIS2=600``.
  This version of the white-light image can help to check how well a
  combination of IFU exposures are coadded when using a dithering technique
  with non-integer offsets (in pixel units).

.. _--atmosphere_transmission:

:raw-html:`<code>--atmosphere_transmission &lt;[default] | none&gt;</code>`
---------------------------------------------------------------------------

The default value makes use of the predicted transmission fraction of the
atmosphere obtained with `SKYCALC Sky Model Calculator
<https://www.eso.org/observing/etc/bin/gen/form?INS.MODE=swspectr+INS.NAME=SKYCALC>`_
(version 2.0.9) using the default input parameters for the model. The
prediction is stored in the file ``skycalc_800-2600nm_step0_01nm.fits``, which
is one of the auxiliary files automatically downloaded in a cache directory the
first time ``fridadrp-ifu_simulator`` is executed. This file contains not only
the atmosphere transmission, but also the sky emission radiance flux (in
ph/s/m2/micron/arcsec2), for the wavelength range from 800 to 2600 nm, with a
sampling of 0.01 nm.

A plot of the atmosphere transmission data is shown below.

.. image:: plot_transmission_fraction.png
   :width: 100%
   :alt: plot of the transmission fraction of the atmosphere

When executing ``fridadrp-ifu_simulator``, the atmospheric transmission
probability at the wavelength of each simulated photon is evaluated, and a
random number between 0 and 1 is generated in each case. If the obtained number
is greater than the transmission probability, the photon is discarded.

.. _--rnoise:

:raw-html:`<code>--rnoise &lt;float&gt;</code>`
-----------------------------------------------

Readout noise (positive number or zero) to be added to the simulated data (in
ADU). By default this parameter is set to zero.

.. _--flatpix2pix:

:raw-html:`<code>--flatpix2pix &lt;[default] | none&gt;</code>`
---------------------------------------------------------------

The default value makes use of a predefined flatfield image stored in one of
the auxiliary files automatically downloaded in a cache directory the first
time ``fridadrp-ifu_simulator`` is executed. The name of this type of file has
the form ``simulated_flat_pix2pix_<grating>.fits``, where ``<grating>`` is the
grating name.

.. _--spectral_blurring_pixel:

:raw-html:`<code>--spectral_blurring_pixel &lt;float&gt;</code>`
----------------------------------------------------------------

Extra degradation to be introduced in the spectral direction to each simulated
photon. In particular, a Gaussian random shift is applied (in pixel units) when
converting the original 3D data cube into the original 2D RSS image. The value
of this parameter provides the standard deviation of the Gaussian distribution.
By default, ``spectral_blurring_pixel = 1.0``.

.. _--seed:

:raw-html:`<code>--seed &lt;integer&gt;</code>`
-----------------------------------------------

Seed to initialize the `Numpy Random Generator
<https://numpy.org/doc/stable/reference/random/generator.html>`_. By default is
set to a particular integer sequence (``1234``).

.. _--prefix_intermediate_FITS:

:raw-html:`<code>--prefix_intermediate_FITS &lt;string&gt;</code>`
------------------------------------------------------------------

Prefix to be added before the name of the FITS files generated during the
simulator execution. By default this string is ``test``. Note that an
underscore ``_`` symbol is also added between this prefix and the filename.

.. _--stop_after_ifu_3D_method0:

:raw-html:`<code>--stop_after_ifu_3D_method0</code>`
----------------------------------------------------

If this argument is present, the simulator stops just after generating
the file ``test_ifu_3D_method0.fits``. This is useful for debugging
purposes.

.. _--verbose:

:raw-html:`<code>--verbose</code>`
----------------------------------

If this argument is present, additional information is displayed in the
terminal while executing the code.

.. _--plots:

:raw-html:`<code>--plots</code>`
--------------------------------

When this argument is present, intermediate plots are also displayed.

.. _--echo:

:raw-html:`<code>--echo</code>`
-------------------------------

Display in the terminal the command line employed to invoke the execution
of the simulator.

.. _--version:

:raw-html:`<code>--version</code>`
----------------------------------

Display the code version number.
