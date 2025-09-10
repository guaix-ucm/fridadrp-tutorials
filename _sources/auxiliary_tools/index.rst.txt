Auxiliary tools
===============

This section describes various procedures that make use of auxiliary **numina**
scripts that support the scientific analysis of images obtained with FRIDA. 

Among these tools we can highlight the following:

- ``numina-compare_adr_extensions_in_3d_cube``: this script computes the
  correction for differential atmospheric refraction present in a 3D data cube,
  by reading the information from two specific extensions (e.g., ``ADRCROSS``,
  ``ADRTHEOR``).

- ``numina-compute_adr_wavelength``: this script calculates the effect of
  atmospheric refraction, using a predefined wavelength as reference.

- ``numina-extract_2d_slice_from_3d_cube``: extracts a 2D section from a 3D
  FITS image. It allows specifying the axis to collapse and the interval (pixel
  range) along that axis.

- ``numina-generate_mosaic_of_2d_images``: this script generates a mosaic of 2D
  images from a list of 2D FITS files.

- ``numina-generate_mosaic_of_3d_images``: this script generates a mosaic of 3D
  data cubes from a list of 3D FITS files.

  - It is possible to use arguments to fix the desired outupt celestial 2D WCS,
    as well as the output CRVAL3 and CDELT3 parameters that define the output
    linear wavelength sampling.

  - If the input is a single 3D FITS cube, the code can be used to resample the
    initial cube with different values of CRVAL3 and CDELT3. In that case, it
    is recommended to use ``interp`` as the reprojection method to avoid the
    default Gaussian kernel used when the reprojection method is ``adaptive``).

- ``numina-imath3d``: performs basic arithmetic operations with FITS images
  (addition, subtraction, multiplication, division) from the terminal command
  line.

- ``numina-measure_slice_xy_offsets_in_3d_cube``:  this script calculates the
  spatial offset in the sky plane between a particular spatial slice and all
  the spatial slices of a given 3D cube. It does so using a cross-correlation
  method.

- ``numina-pixel_solid_angle_arcsec2``: this script calculates the solid angle
  subtended by a pixel in a 2D FITS image (in arcsec^2).

- ``numina-pixel_to_world``: auxiliary script to convert from pixel coordinates
  to celestial coordinates and wavelength.  There is also the script
  ``numina-world_to_pixel``, which performs the inverse transformation.

- ``numina-resample_wave_3d_cube``: this script resamples a 3D data cube by
  specifying the output values for CRVAL3, CDELT3 and NAXIS3. The celestial WCS
  is preserved, and the spectral WCS is modified in order to make use of the
  new wavelength sampling. This code does not use the functionality of the
  **reproject** package and instead performs a simple linear redistribution of
  the signal in the newly sampled wavelength grid. In this sense, it produces
  the same result as the ``numina-generate_mosaic_of_3d_images`` script when
  employed with a single input 3D FITS file and the reprojection method is
  ``interp``.

- ``numina-sp3d_with_ds9``: this script opens a 3D FITS image in the ``ds9``
  image browser and allows interactive selection of object and sky spaxels.
  Simultaneously, the corresponding spectra and their subtraction are
  displayed.  This interaction is similar to what is done with the program
  ``qfitsview``. The reason for developing this code has been the more
  comfortable interaction with the Matplotlib window displaying the spectra,
  along with the ability to leverage the full functionality of the ``ds9``
  program. The ``ds9`` session is launched automatically when running this
  script and must be closed manually upon completion.

- ``numina-ximshow``: this is a tool for visualizing 2D FITS images using
  Matplotlib, which can be convenient when displaying multiple images
  consecutively and quickly saving the result to a PNG or PDF file.

Some of these tools are employed in the examples described in following
procedures:

.. toctree::
   :maxdepth: 2

   data_cube_mosaics
