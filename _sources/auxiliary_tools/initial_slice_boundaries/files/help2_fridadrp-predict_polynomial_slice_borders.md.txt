```console
(venv_numina) $ fridadrp-predict_polynomial_slice_borders --help
```

```{code-block} ansi-shell-session
:class: my-special-block no-copybutton

[38;5;208mUsage:[0m [38;5;244mfridadrp-predict_polynomial_slice_borders[0m [[36m-h[0m] [36m--poly[0m [38;5;36mPOLY[0m
                                                 [36m--slicenum[0m [38;5;36mSLICE_INDEX[0m
                                                 [[36m--degslice[0m [38;5;36mDEGSLICE[0m]
                                                 [36m--output[0m [38;5;36mOUTPUT[0m [[36m--overwrite[0m]
                                                 [[36m--force[0m] [[36m--plots[0m]
                                                 [[36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m]
                                                 [[36m--record[0m] [[36m--echo[0m]
                                                 [[36m--version[0m]
                                                 [[36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m]

[39mPredict slice boundary polynomials[0m

[38;5;208mOptions:[0m
  [36m-h[0m, [36m--help[0m            [39mshow this help message and exit[0m
  [36m--poly[0m [38;5;36mPOLY[0m           [39mPath to the input file with the boundary polynomials[0m
  [36m--slicenum[0m [38;5;36mSLICE_INDEX[0m
                        [39mSlice number to be predicted (1 to 30, where 1 is the[0m
                        [39mbottom slice and 30 is the top slice)[0m
  [36m--degslice[0m [38;5;36mDEGSLICE[0m   [39mDegree of the polynomial to be fitted (slice border[0m
                        [39mvs. slice index; default 2)[0m
  [36m--output[0m [38;5;36mOUTPUT[0m       [39mOutput file name for the predicted polynomials[0m
  [36m--overwrite[0m           [39mOverwrite existing output file[0m
  [36m--force[0m               [39mForce recomputation of existing polynomials in chosen[0m
                        [39mslice[0m
  [36m--plots[0m               [39mDisplay plots of the polynomial fitting[0m
  [36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m
                        [39mOutput directory (default: .)[0m
  [36m--record[0m              [39mRecord terminal output[0m
  [36m--echo[0m                [39mDisplay full command line[0m
  [36m--version[0m             [39mDisplay version[0m
  [36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m
                        [39mSet the logging level[0m
```
