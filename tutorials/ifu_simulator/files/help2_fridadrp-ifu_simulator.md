```console
(venv_numina) $ fridadrp-ifu_simulator --help
```

```{code-block} ansi-shell-session
:class: my-special-block no-copybutton

[38;5;208mUsage:[0m [38;5;244mfridadrp-ifu_simulator[0m [[36m-h[0m] [[36m--scene[0m [38;5;36mSCENE[0m] [[36m--flux_factor[0m [38;5;36mFLUX_FACTOR[0m]
                              [[36m--grating[0m [38;5;36mGRATING[0m] [[36m--scale[0m [38;5;36mSCALE[0m]
                              [[36m--ra_teles_deg[0m [38;5;36mRA_TELES_DEG[0m]
                              [[36m--dec_teles_deg[0m [38;5;36mDEC_TELES_DEG[0m]
                              [[36m--delta_ra_teles_arcsec[0m [38;5;36mDELTA_RA_TELES_ARCSEC[0m]
                              [[36m--delta_dec_teles_arcsec[0m [38;5;36mDELTA_DEC_TELES_ARCSEC[0m]
                              [[36m--seeing_fwhm_arcsec[0m [38;5;36mSEEING_FWHM_ARCSEC[0m]
                              [[36m--seeing_psf[0m [38;5;36m{gaussian}[0m]
                              [[36m--instrument_pa_deg[0m [38;5;36mINSTRUMENT_PA_DEG[0m]
                              [[36m--airmass[0m [38;5;36mAIRMASS[0m]
                              [[36m--parallactic_angle_deg[0m [38;5;36mPARALLACTIC_ANGLE_DEG[0m]
                              [[36m--noversampling_whitelight[0m [38;5;36mNOVERSAMPLING_WHITELIGHT[0m]
                              [[36m--atmosphere_transmission[0m [38;5;36m{default,none}[0m]
                              [[36m--bias[0m [38;5;36mBIAS[0m] [[36m--rnoise[0m [38;5;36mRNOISE[0m]
                              [[36m--flatpix2pix[0m [38;5;36m{default,none}[0m]
                              [[36m--spectral_blurring_pixel[0m [38;5;36mSPECTRAL_BLURRING_PIXEL[0m]
                              [[36m--seed[0m [38;5;36mSEED[0m] [[36m--noparallel[0m]
                              [[36m--prefix_intermediate_FITS[0m [38;5;36mPREFIX_INTERMEDIATE_FITS[0m]
                              [[36m--stop_after_ifu_3D_method0[0m] [[36m-v[0m] [[36m--plots[0m]
                              [[36m--echo[0m] [[36m--version[0m]

[39mdescription: simulator of FRIDA IFU images (0.1.dev153+gea7254566)[0m

[38;5;208mOptions:[0m
  [36m-h[0m, [36m--help[0m            [39mshow this help message and exit[0m
  [36m--scene[0m [38;5;36mSCENE[0m         [39mYAML scene file name[0m
  [36m--flux_factor[0m [38;5;36mFLUX_FACTOR[0m
                        [39mMultiplicative factor to be applied to the number of[0m
                        [39mphotons defined in the scene file (default=1.0)[0m
  [36m--grating[0m [38;5;36mGRATING[0m     [39mGrating name[0m
  [36m--scale[0m [38;5;36mSCALE[0m         [39mScale[0m
  [36m--ra_teles_deg[0m [38;5;36mRA_TELES_DEG[0m
                        [39mTelescope central RA (deg)[0m
  [36m--dec_teles_deg[0m [38;5;36mDEC_TELES_DEG[0m
                        [39mTelescope central DEC (deg)[0m
  [36m--delta_ra_teles_arcsec[0m [38;5;36mDELTA_RA_TELES_ARCSEC[0m
                        [39mOffset in RA (arcsec)[0m
  [36m--delta_dec_teles_arcsec[0m [38;5;36mDELTA_DEC_TELES_ARCSEC[0m
                        [39mOffset in DEC (arcsec)[0m
  [36m--seeing_fwhm_arcsec[0m [38;5;36mSEEING_FWHM_ARCSEC[0m
                        [39mSeeing FWHM (arcsec)[0m
  [36m--seeing_psf[0m [38;5;36m{gaussian}[0m
                        [39mSeeing PSF[0m
  [36m--instrument_pa_deg[0m [38;5;36mINSTRUMENT_PA_DEG[0m
                        [39mInstrument Position Angle (deg)[0m
  [36m--airmass[0m [38;5;36mAIRMASS[0m     [39mAirmass[0m
  [36m--parallactic_angle_deg[0m [38;5;36mPARALLACTIC_ANGLE_DEG[0m
                        [39mParallactic angle (deg)[0m
  [36m--noversampling_whitelight[0m [38;5;36mNOVERSAMPLING_WHITELIGHT[0m
                        [39mOversampling white light image[0m
  [36m--atmosphere_transmission[0m [38;5;36m{default,none}[0m
                        [39mAtmosphere transmission[0m
  [36m--bias[0m [38;5;36mBIAS[0m           [39mBias level (ADU)[0m
  [36m--rnoise[0m [38;5;36mRNOISE[0m       [39mReadout noise standard deviation (ADU)[0m
  [36m--flatpix2pix[0m [38;5;36m{default,none}[0m
                        [39mPixel-to-pixel flat field[0m
  [36m--spectral_blurring_pixel[0m [38;5;36mSPECTRAL_BLURRING_PIXEL[0m
                        [39mSpectral blurring when converting the original 3D data[0m
                        [39mcube to the original 2D RSS (in pixel units)[0m
  [36m--seed[0m [38;5;36mSEED[0m           [39mSeed for random number generator[0m
  [36m--noparallel[0m          [39mDo not use parallel processing[0m
  [36m--prefix_intermediate_FITS[0m [38;5;36mPREFIX_INTERMEDIATE_FITS[0m
                        [39mPrefix for intermediate FITS files[0m
  [36m--stop_after_ifu_3D_method0[0m
                        [39mStop after computing ifu_3D_method0 image[0m
  [36m-v[0m, [36m--verbose[0m         [39mincrease program verbosity[0m
  [36m--plots[0m               [39mPlot intermediate results[0m
  [36m--echo[0m                [39mDisplay full command line[0m
  [36m--version[0m             [39mDisplay version[0m
```
