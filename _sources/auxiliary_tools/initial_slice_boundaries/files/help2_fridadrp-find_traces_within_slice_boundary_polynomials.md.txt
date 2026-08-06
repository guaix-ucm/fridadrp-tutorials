```console
(venv_numina) $ fridadrp-find_traces_within_slice_boundary_polynomials --help
```

```{code-block} ansi-shell-session
:class: my-special-block no-copybutton

[38;5;208mUsage:[0m [38;5;244mfridadrp-find_traces_within_slice_boundary_polynomials[0m
       [[36m-h[0m] [36m--image[0m [38;5;36mIMAGE[0m [36m--poly[0m [38;5;36mPOLY[0m [[36m--voffset[0m [38;5;36mVOFFSET[0m [[38;5;36mVOFFSET[0m [38;5;36m...[0m]]
       [36m--ntraces[0m [38;5;36mNTRACES[0m [[36m--nextend[0m [38;5;36mNEXTEND[0m]
       [[36m--nclean-around-peaks[0m [38;5;36mNCLEAN_AROUND_PEAKS[0m] [36m--deg[0m [38;5;36mDEG[0m
       [[36m--colrange[0m [38;5;36mMIN[0m [38;5;36mMAX[0m] [[36m--ymedian[0m [38;5;36mYMEDIAN[0m] [[36m--xmedian[0m [38;5;36mXMEDIAN[0m]
       [[36m--theilsen[0m] [[36m--degslice[0m [38;5;36mDEGSLICE[0m] [[36m--degrefine[0m [38;5;36mDEGREFINE[0m] [[36m--norefine[0m]
       [36m--output[0m [38;5;36mOUTPUT[0m [[36m--overwrite[0m] [[36m--plotsliceid[0m [38;5;36mPLOTSLICEID[0m]
       [[36m--pdf-out[0m [38;5;36mPDF_OUT[0m] [[36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m] [[36m--record[0m] [[36m--echo[0m]
       [[36m--version[0m] [[36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m]

[39mFind traces within slice boundary polynomials[0m

[38;5;208mOptions:[0m
  [36m-h[0m, [36m--help[0m            [39mshow this help message and exit[0m
  [36m--image[0m [38;5;36mIMAGE[0m         [39mPath to the input image file (FITS format)[0m
  [36m--poly[0m [38;5;36mPOLY[0m           [39mPath to the input file with the boundary polynomials[0m
  [36m--voffset[0m [38;5;36mVOFFSET[0m [[38;5;36mVOFFSET[0m [38;5;36m...[0m]
                        [39mVertical offset to apply to the slice boundaries[0m
                        [39m(default: 0.0 pixels; + upward, - downward). If more[0m
                        [39mthan one value is provided, a polynomial of degree[0m
                        [39mlen(voffset)-1 will be fitted to the offsets and[0m
                        [39mapplied to the slice boundaries.[0m
  [36m--ntraces[0m [38;5;36mNTRACES[0m     [39mNumber of traces per slice to find[0m
  [36m--nextend[0m [38;5;36mNEXTEND[0m     [39mNumber of pixels to extend the slice boundaries for[0m
                        [39mtrace finding (default: 2)[0m
  [36m--nclean-around-peaks[0m [38;5;36mNCLEAN_AROUND_PEAKS[0m
                        [39mNumber of pixels to clean at both sides of each peak[0m
                        [39m(default: [0m[36m-1[0m[39m; set to zero pixels moving outward from[0m
                        [39mthe peak while the signal keeps decreasing)[0m
  [36m--deg[0m [38;5;36mDEG[0m             [39mDegree of the polynomial to fit each trace[0m
  [36m--colrange[0m [38;5;36mMIN[0m [38;5;36mMAX[0m    [39mColumn range to analyze (1-based index) along NAXIS1.[0m
                        [39mThis option can be specified multiple times[0m
  [36m--ymedian[0m [38;5;36mYMEDIAN[0m     [39mSize of the median filter along NAXIS2 axis to be[0m
                        [39msubtracted (odd; default: 0 -> no filtering)[0m
  [36m--xmedian[0m [38;5;36mXMEDIAN[0m     [39mSize of the median filter along NAXIS1 axis (odd;[0m
                        [39mdefault: 21)[0m
  [36m--theilsen[0m            [39mUse initial Theil-Sen regression to reject outliers in[0m
                        [39mthe polynomial fitting[0m
  [36m--degslice[0m [38;5;36mDEGSLICE[0m   [39mDegree of the polynomial to fit traces across slices[0m
                        [39m(default: 2)[0m
  [36m--degrefine[0m [38;5;36mDEGREFINE[0m
                        [39mDegree of the polynomial to refine the trace positions[0m
                        [39m(default: 2)[0m
  [36m--norefine[0m            [39mDo not refine the extrapolated traces[0m
  [36m--output[0m [38;5;36mOUTPUT[0m       [39mOutput file name for the predicted polynomials[0m
  [36m--overwrite[0m           [39mOverwrite existing output file[0m
  [36m--plotsliceid[0m [38;5;36mPLOTSLICEID[0m
                        [39mDisplay plots for slice id (this option can be[0m
                        [39mspecified multiple times)[0m
  [36m--pdf-out[0m [38;5;36mPDF_OUT[0m     [39mOutput PDF file for final plots with traces for every[0m
                        [39mslice (default: None, no output)[0m
  [36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m
                        [39mOutput directory (default: .)[0m
  [36m--record[0m              [39mRecord terminal output[0m
  [36m--echo[0m                [39mDisplay full command line[0m
  [36m--version[0m             [39mDisplay version[0m
  [36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m
                        [39mSet the logging level[0m
```
