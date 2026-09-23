```{code-block} ansi-shell-session
:class: my-special-block no-copybutton

[92m────────── [0m[1;35mWelcome to numina-adr_correction_from_extension_in_3d_cube[0m[92m ──────────[0m
Using numina.tools.adr_correction_from_extension_in_3d_cube version             
[1;36m0.37[0m.[1;36m1.[0mdev27+g99dd01c60.d20260903                                               
Reading ADR correction from ADRTHEOR extension                                  
Generating mask from np.nan in PRIMARY HDU                                      
Number of masked pixels in the input 3D array: [1;36m0[0m                                
Center IFU coord: [1m<[0m[1;95mSkyCoord[0m[39m [0m[1;39m([0m[39mICRS[0m[1;39m)[0m[39m: [0m[1;39m([0m[39mra, dec[0m[1;39m)[0m[39m in deg[0m                            
[39m    [0m[1;39m([0m[1;36m4.29649529e-31[0m[39m, [0m[1;36m0[0m[39m.[0m[1;39m)[0m[1m>[0m                                                       
                                                                                
wcs2d_blue:                                                                     
WCS Keywords                                                                    
                                                                                
Number of WCS axes: [1;36m2[0m                                                           
CTYPE : [32m'RA---TAN'[0m [32m'DEC--TAN'[0m                                                   
CRVAL : [1;36m0.0[0m [1;36m0.0[0m                                                                 
CRPIX : [1;36m34.52910644625767[0m [1;36m34.851432798221026[0m                                    
CD1_1 CD1_2  : [1;36m-2.6102572799608e-06[0m [1;36m-9.5005595368241e-07[0m                        
CD2_1 CD2_2  : [1;36m-9.5005595368241e-07[0m [1;36m2.61025727996085e-06[0m                        
NAXIS : [1;36m64[0m  [1;36m60[0m                                                                  
                                                                                
wcs2d_red:                                                                      
WCS Keywords                                                                    
                                                                                
Number of WCS axes: [1;36m2[0m                                                           
CTYPE : [32m'RA---TAN'[0m [32m'DEC--TAN'[0m                                                   
CRVAL : [1;36m0.0[0m [1;36m0.0[0m                                                                 
CRPIX : [1;36m31.135611152816477[0m [1;36m27.574058672835367[0m                                   
CD1_1 CD1_2  : [1;36m-2.6102572799608e-06[0m [1;36m-9.5005595368241e-07[0m                        
CD2_1 CD2_2  : [1;36m-9.5005595368241e-07[0m [1;36m2.61025727996085e-06[0m                        
NAXIS : [1;36m64[0m  [1;36m60[0m                                                                  
                                                                                
wcs_mosaic2d:                                                                   
WCS Keywords                                                                    
                                                                                
Number of WCS axes: [1;36m2[0m                                                           
CTYPE : [32m'RA---TAN'[0m [32m'DEC--TAN'[0m                                                   
CRVAL : [1;36m4.296495291499103e-31[0m [1;36m0.0[0m                                               
CRPIX : [1;36m44.225782186039496[0m [1;36m43.03043723461774[0m                                    
PC1_1 PC1_2  : [1;36m1.0[0m [1;36m0.0[0m                                                          
PC2_1 PC2_2  : [1;36m0.0[0m [1;36m1.0[0m                                                          
CDELT : [1;36m-2.7777777777777233e-06[0m [1;36m2.7777777777777233e-06[0m                          
NAXIS : [1;36m0[0m  [1;36m0[0m                                                                    
shape_mosaic2d: [1m([0m[1;36m84[0m, [1;36m86[0m[1m)[0m                                                        
NAXIS1, NAXIS2, NAXIS3 of corrected 3D cube: [1;36m86[0m, [1;36m84[0m, [1;36m2048[0m                       
Reprojection method: adaptive [1m([0mplease wait[33m...[0m[1m)[0m                                  
[1;36m0[0m%                                                                              
[1;36m0[0m% [1;36m10[0m%_____________________________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:01[0m|[33mleft[0m=[1;92m0[0m[1;92m:13[0m|[33mexp[0m=[1;92m0[0m[1;92m:14[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m%_________________________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:03[0m|[33mleft[0m=[1;92m0[0m[1;92m:12[0m|[33mexp[0m=[1;92m0[0m[1;92m:14[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m%_____________________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:04[0m|[33mleft[0m=[1;92m0[0m[1;92m:10[0m|[33mexp[0m=[1;92m0[0m[1;92m:14[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m%_________________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:06[0m|[33mleft[0m=[1;92m0[0m[1;92m:09[0m|[33mexp[0m=[1;92m0[0m[1;92m:15[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m%_____________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:07[0m|[33mleft[0m=[1;92m0[0m[1;92m:07[0m|[33mexp[0m=[1;92m0[0m[1;92m:15[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m% [1;36m60[0m%_________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:09[0m|[33mleft[0m=[1;92m0[0m[1;92m:06[0m|[33mexp[0m=[1;92m0[0m[1;92m:15[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m% [1;36m60[0m% [1;36m70[0m%_____________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:10[0m|[33mleft[0m=[1;92m0[0m[1;92m:04[0m|[33mexp[0m=[1;92m0[0m[1;92m:15[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m% [1;36m60[0m% [1;36m70[0m% [1;36m80[0m%_________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:12[0m|[33mleft[0m=[1;92m0[0m[1;92m:03[0m|[33mexp[0m=[1;92m0[0m[1;92m:15[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m% [1;36m60[0m% [1;36m70[0m% [1;36m80[0m% [1;36m90[0m%_____ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:13[0m|[33mleft[0m=[1;92m0[0m[1;92m:01[0m|[33mexp[0m=[1;92m0[0m[1;92m:15[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m% [1;36m60[0m% [1;36m70[0m% [1;36m80[0m% [1;36m90[0m% [1;36m100[0m% [1m([0m[33melap[0m=[1;92m0[0m[1;92m:15[0m|[33mleft[0m=[1;92m0[0m[1;92m:00[0m|[33mexp[0m=[1;92m0[0m[1;92m:15[0m[1m)[0m      
Reprojection finished! [1m([0melapsed time: [1;36m14.571223[0m seconds[1m)[0m                        
                                                                                
Flux check:                                                                     
- total counts in original  3D cube: [1;36m84480108[0m                                   
- total counts in corrected 3D cube: [1;36m84274917.5362784[0m                           
- ratio original/corrected[33m...[0m[33m...[0m[33m...[0m: [1;36m1.0024347750163418[0m                         
                                                                                
Footprint coverage [1m([0mfraction[1m)[0m: [1;36m0.4813119544011282[0m                               
                                                                                
header3d_corrected:                                                             
WCSAXES =                    [1;36m3[0m [35m/[0m Number of coordinate axes                      
CRPIX1  =      [1;36m44.225782186039[0m [35m/[0m Pixel coordinate of reference point            
CRPIX2  =      [1;36m43.030437234618[0m [35m/[0m Pixel coordinate of reference point            
CRPIX3  =                  [1;36m1.0[0m [35m/[0m Pixel coordinate of reference point            
CDELT1  = [1;36m-2.[0m7777777777777E-[1;36m06[0m [35m/[0m  Coordinate increment at reference point       
CDELT2  =  [1;36m2.[0m7777777777777E-[1;36m06[0m [35m/[0m  Coordinate increment at reference point       
CDELT3  = [1;36m2.[0m85000000000032E-[1;36m10[0m [35m/[0m  Coordinate increment at reference point       
CUNIT1  = [32m'deg'[0m                [35m/[0m Units of coordinate increment and value        
CUNIT2  = [32m'deg'[0m                [35m/[0m Units of coordinate increment and value        
CUNIT3  = [32m'm       '[0m           [35m/[0m Units of coordinate increment and value        
CTYPE1  = [32m'RA---TAN'[0m           [35m/[0m Right ascension, gnomonic projection           
CTYPE2  = [32m'DEC--TAN'[0m           [35m/[0m Declination, gnomonic projection               
CTYPE3  = [32m'WAVE    '[0m           [35m/[0m Vacuum wavelength [1m([0mlinear[1m)[0m                     
CRVAL1  =  [1;36m4.[0m2964952914991E-[1;36m31[0m [35m/[0m  Coordinate value at reference point           
CRVAL2  =                  [1;36m0.0[0m [35m/[0m  Coordinate value at reference point           
CRVAL3  =           [1;36m1.[0m9344E-[1;36m06[0m [35m/[0m  Coordinate value at reference point           
LONPOLE =                [1;36m180.0[0m [35m/[0m  Native longitude of celestial pole            
LATPOLE =                  [1;36m0.0[0m [35m/[0m  Native latitude of celestial pole             
MJDREF  =                  [1;36m0.0[0m [35m/[0m [2m MJD of fiducial time                       [0m   
RADESYS = [32m'ICRS'[0m               [35m/[0m Equatorial coordinate system                   
                                                                                
Saving file: test1c_ifu_3D_method0_corrected_ADRTHEOR.fits                      
Total time elapsed: [1;92m0:00:14[0m.[1;36m679305[0m                                              
[92m────────────────────────────────── [0m[1;35m Goodbye! [0m[92m ──────────────────────────────────[0m
```
