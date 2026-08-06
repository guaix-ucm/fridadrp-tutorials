```console
(venv_numina) $ fridadrp-interpolate_traces_within_slices --help
```

```{code-block} ansi-shell-session
:class: my-special-block no-copybutton

[38;5;208mUsage:[0m [38;5;244mfridadrp-interpolate_traces_within_slices[0m [[36m-h[0m] [36m--image[0m [38;5;36mIMAGE[0m
                                                 [36m--traces[0m [38;5;36mTRACES[0m
                                                 [36m--sliceid[0m [38;5;36mSLICEID[0m
                                                 [[36m--skip-sliceid[0m [38;5;36mSKIP_SLICEID[0m]
                                                 [[36m--colrange[0m [38;5;36mMIN[0m [38;5;36mMAX[0m]
                                                 [[36m--xmedian[0m [38;5;36mXMEDIAN[0m]
                                                 [[36m--degslice[0m [38;5;36mDEGSLICE[0m]
                                                 [[36m--norefine[0m]
                                                 [[36m--degrefine[0m [38;5;36mDEGREFINE[0m]
                                                 [[36m--plots[0m] [36m--output[0m [38;5;36mOUTPUT[0m
                                                 [[36m--overwrite[0m]
                                                 [[36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m]
                                                 [[36m--record[0m] [[36m--echo[0m]
                                                 [[36m--version[0m]
                                                 [[36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m]

[39mInterpolate/extrapolate traces within slices[0m

[38;5;208mOptions:[0m
  [36m-h[0m, [36m--help[0m            [39mshow this help message and exit[0m
  [36m--image[0m [38;5;36mIMAGE[0m         [39mPath to the input image file (FITS format)[0m
  [36m--traces[0m [38;5;36mTRACES[0m       [39mPath to the file with the slice trace polynomials[0m
  [36m--sliceid[0m [38;5;36mSLICEID[0m     [39mSlice ID to process. This option can be specified[0m
                        [39mmultiple times[0m
  [36m--skip-sliceid[0m [38;5;36mSKIP_SLICEID[0m
                        [39mSlice ID to ignore in the interpolation/extrapolation.[0m
                        [39mThis option can be specified multiple times[0m
  [36m--colrange[0m [38;5;36mMIN[0m [38;5;36mMAX[0m    [39mColumn range to analyze (1-based index) along NAXIS1.[0m
                        [39mThis option can be specified multiple times[0m
  [36m--xmedian[0m [38;5;36mXMEDIAN[0m     [39mSize of the median filter along NAXIS1 axis (odd;[0m
                        [39mdefault: 21)[0m
  [36m--degslice[0m [38;5;36mDEGSLICE[0m   [39mDegree of the polynomial to fit traces across slices[0m
                        [39m(default: 2)[0m
  [36m--norefine[0m            [39mDo not refine the interpolated/extrapolated traces[0m
                        [39musing the smoothed image data[0m
  [36m--degrefine[0m [38;5;36mDEGREFINE[0m
                        [39mDegree of the polynomial to refine the trace positions[0m
                        [39m(default: 2)[0m
  [36m--plots[0m               [39mDisplay plots of the interpolated/extrapolated traces[0m
  [36m--output[0m [38;5;36mOUTPUT[0m       [39mOutput file name for the predicted polynomials[0m
  [36m--overwrite[0m           [39mOverwrite existing output file[0m
  [36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m
                        [39mOutput directory (default: .)[0m
  [36m--record[0m              [39mRecord terminal output[0m
  [36m--echo[0m                [39mDisplay full command line[0m
  [36m--version[0m             [39mDisplay version[0m
  [36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m
                        [39mSet the logging level[0m
```
