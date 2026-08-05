```console
(venv_numina) $ fridadrp-find_slice_boundary_borders_from_flat --help
```

```{code-block} ansi-shell-session
:class: my-special-block no-copybutton

[38;5;208mUsage:[0m [38;5;244mfridadrp-find_slice_boundary_borders_from_flat[0m [[36m-h[0m]
                                                      [[36m--flatfile[0m [38;5;36mFLATFILE[0m]
                                                      [[36m--output[0m [38;5;36mOUTPUT[0m]
                                                      [[36m--overwrite[0m]
                                                      [[36m--slice-ini[0m [38;5;36mSLICE_INI[0m]
                                                      [[36m--slice-end[0m [38;5;36mSLICE_END[0m]
                                                      [[36m--row-ini[0m [38;5;36mROW_INI[0m]
                                                      [[36m--row-end[0m [38;5;36mROW_END[0m]
                                                      [[36m--colrange[0m [38;5;36mMIN[0m [38;5;36mMAX[0m]
                                                      [[36m--xmedian[0m [38;5;36mXMEDIAN[0m]
                                                      [[36m--savgol-ywindow[0m [38;5;36mSAVGOL_YWINDOW[0m]
                                                      [[36m--savgol-polyorder[0m [38;5;36mSAVGOL_POLYORDER[0m]
                                                      [[36m--plots[0m]
                                                      [[36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m]
                                                      [[36m--record[0m] [[36m--echo[0m]
                                                      [[36m--version[0m]
                                                      [[36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m]

[39mFind the slice boundaries from flat image[0m

[38;5;208mOptions:[0m
  [36m-h[0m, [36m--help[0m            [39mshow this help message and exit[0m
  [36m--flatfile[0m [38;5;36mFLATFILE[0m   [39mPath to the flat file[0m
  [36m--output[0m [38;5;36mOUTPUT[0m       [39mOutput FITS file name[0m
  [36m--overwrite[0m           [39mOverwrite output file if it exists[0m
  [36m--slice-ini[0m [38;5;36mSLICE_INI[0m
                        [39mInitial slice number (1-based index)[0m
  [36m--slice-end[0m [38;5;36mSLICE_END[0m
                        [39mFinal slice number (1-based index)[0m
  [36m--row-ini[0m [38;5;36mROW_INI[0m     [39mInitial row number (1-based index) along NAXIS2[0m
  [36m--row-end[0m [38;5;36mROW_END[0m     [39mFinal row number (1-based index) along NAXIS2[0m
  [36m--colrange[0m [38;5;36mMIN[0m [38;5;36mMAX[0m    [39mColumn range to analyze (1-based index) along NAXIS1.[0m
                        [39mThis option can be specified multiple times[0m
  [36m--xmedian[0m [38;5;36mXMEDIAN[0m     [39mSize of the median filter along NAXIS1 axis (odd;[0m
                        [39mdefault: 21)[0m
  [36m--savgol-ywindow[0m [38;5;36mSAVGOL_YWINDOW[0m
                        [39mSavitzky-Golay filter window size along NAXIS2 axis[0m
                        [39m(default: 5)[0m
  [36m--savgol-polyorder[0m [38;5;36mSAVGOL_POLYORDER[0m
                        [39mSavitzky-Golay filter polynomial order along NAXIS2[0m
                        [39maxis (default: 2)[0m
  [36m--plots[0m               [39mDisplay plots[0m
  [36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m
                        [39mOutput directory (default: .)[0m
  [36m--record[0m              [39mRecord terminal output[0m
  [36m--echo[0m                [39mDisplay full command line[0m
  [36m--version[0m             [39mDisplay version[0m
  [36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m
                        [39mSet the logging level[0m
```
