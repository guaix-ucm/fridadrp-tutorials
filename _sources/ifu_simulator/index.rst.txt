Running the IFU simulator
=========================

While not part of the FRIDA data reduction pipeline, the
``fridadrp-ifu_simulator`` script
was created with the intention of generating simulated images to begin the
development and testing of reduction recipes.

After installing ``megardrp``, the IFU simulator should be available in your
system:

.. code-block:: console

   (venv_frida) $ fridadrp-ifu_simulator --version
   0.1.dev122+g9cc23a9

The script accepts a number of arguments, which are displayed when invoking the
script name without any parameter:

.. code-block:: console

   (venv_frida) $ fridadrp-ifu_simulator
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
                                 [--rnoise RNOISE] [--flatpix2pix {default,none}]
                                 [--seed SEED]
                                 [--prefix_intermediate_FITS PREFIX_INTERMEDIATE_FITS]
                                 [--stop_after_ifu_3D_method0] [-v] [--plots]
                                 [--echo] [--version]
   
The simulator uses a file called *scene* as its basic input, which contains
information about the image to be simulated. This file must be written in YAML
format, which allows the user to conveniently define the geometry and type of
spectrum of the astronomical sources to be simulated.

.. toctree::
   :maxdepth: 2

   initial_example
   script_arguments
   scene_yaml
   examples
