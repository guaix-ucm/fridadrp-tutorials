```console
(venv_numina) $ fridadrp-fit_slice_boundary_borders_with_polynomials --help
```

```{code-block} ansi-shell-session
:class: my-special-block no-copybutton

[38;5;208mUsage:[0m [38;5;244mfridadrp-fit_slice_boundary_borders_with_polynomials[0m
       [[36m-h[0m] [36m--input[0m [38;5;36mINPUT[0m [[36m--colrange[0m [38;5;36mMIN[0m [38;5;36mMAX[0m] [36m--deg[0m [38;5;36mDEG[0m [[36m--output[0m [38;5;36mOUTPUT[0m]
       [[36m--overwrite[0m] [[36m--plots[0m] [[36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m] [[36m--record[0m] [[36m--echo[0m]
       [[36m--version[0m] [[36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m]

[39mFit the slice boundaries determined from flat image[0m

[38;5;208mOptions:[0m
  [36m-h[0m, [36m--help[0m            [39mshow this help message and exit[0m
  [36m--input[0m [38;5;36mINPUT[0m         [39mPath to the FITS file with border data[0m
  [36m--colrange[0m [38;5;36mMIN[0m [38;5;36mMAX[0m    [39mColumn range to fit (1-based index). This option can[0m
                        [39mbe specified multiple times[0m
  [36m--deg[0m [38;5;36mDEG[0m             [39mDegree of the polynomial to fit[0m
  [36m--output[0m [38;5;36mOUTPUT[0m       [39mOutput FITS file name[0m
  [36m--overwrite[0m           [39mOverwrite output file if it exists[0m
  [36m--plots[0m               [39mDisplay plots[0m
  [36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m
                        [39mOutput directory (default: .)[0m
  [36m--record[0m              [39mRecord terminal output[0m
  [36m--echo[0m                [39mDisplay full command line[0m
  [36m--version[0m             [39mDisplay version[0m
  [36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m
                        [39mSet the logging level[0m
```
