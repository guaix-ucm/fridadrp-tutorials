```console
(venv_numina) $ fridadrp-overplot_slice_boundary_polynomials --help
```

```{code-block} ansi-shell-session
:class: my-special-block no-copybutton

[38;5;208mUsage:[0m [38;5;244mfridadrp-overplot_slice_boundary_polynomials[0m [[36m-h[0m] [[36m--poly[0m [38;5;36mPOLY[0m]
                                                    [[36m--borders[0m [38;5;36mBORDERS[0m]
                                                    [[36m--traces[0m [38;5;36mTRACES[0m]
                                                    [36m--image[0m [38;5;36mIMAGE[0m
                                                    [[36m--voffset[0m [38;5;36mVOFFSET[0m]
                                                    [[36m--sliceid[0m] [[36m--traceid[0m]
                                                    [[36m--xlim[0m [38;5;36mXLIM[0m [38;5;36mXLIM[0m]
                                                    [[36m--ylim[0m [38;5;36mYLIM[0m [38;5;36mYLIM[0m]
                                                    [[36m--pdf-mosaic[0m [38;5;36mPDF_MOSAIC[0m]
                                                    [[36m--montage[0m [38;5;36m{png,pdf}[0m]
                                                    [[36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m]
                                                    [[36m--record[0m] [[36m--echo[0m]
                                                    [[36m--version[0m]
                                                    [[36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m]

[39mOverplot the slice boundaries (borders and/or polynomials) and/or traces on[0m
[39mimage[0m

[38;5;208mOptions:[0m
  [36m-h[0m, [36m--help[0m            [39mshow this help message and exit[0m
  [36m--poly[0m [38;5;36mPOLY[0m           [39mPath to the file with the boundary polynomials[0m
                        [39m(optional)[0m
  [36m--borders[0m [38;5;36mBORDERS[0m     [39mPath to the file with the boundary borders (optional)[0m
  [36m--traces[0m [38;5;36mTRACES[0m       [39mPath to the file with the slice trace polynomials[0m
                        [39m(optional)[0m
  [36m--image[0m [38;5;36mIMAGE[0m         [39mImage to display boundaries on[0m
  [36m--voffset[0m [38;5;36mVOFFSET[0m     [39mVertical constant offset (pixels) to apply[0m
  [36m--sliceid[0m             [39mOverplot slice ID[0m
  [36m--traceid[0m             [39mOverplot trace ID[0m
  [36m--xlim[0m [38;5;36mXLIM[0m [38;5;36mXLIM[0m      [39mX-axis limits for the plot (xmin, xmax); array indices[0m
                        [39m(1-based along NAXIS1 axis)[0m
  [36m--ylim[0m [38;5;36mYLIM[0m [38;5;36mYLIM[0m      [39mY-axis limits for the plot (ymin, ymax); array indices[0m
                        [39m(1-based along NAXIS2 axis)[0m
  [36m--pdf-mosaic[0m [38;5;36mPDF_MOSAIC[0m
                        [39mOutput PDF file to save zoomed images of all the[0m
                        [39mslices[0m
  [36m--montage[0m [38;5;36m{png,pdf}[0m   [39mDisplay a montage of the final plots with traces for[0m
                        [39mevery slice (requires ImageMagick's montage)[0m
  [36m--output-dir[0m [38;5;36mOUTPUT_DIR[0m
                        [39mOutput directory (default: .)[0m
  [36m--record[0m              [39mRecord terminal output[0m
  [36m--echo[0m                [39mDisplay full command line[0m
  [36m--version[0m             [39mDisplay version[0m
  [36m--log-level[0m [38;5;36m{DEBUG,INFO,WARNING,ERROR,CRITICAL}[0m
                        [39mSet the logging level[0m
```
