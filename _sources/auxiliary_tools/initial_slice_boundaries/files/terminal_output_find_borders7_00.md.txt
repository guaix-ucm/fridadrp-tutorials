```{code-block} ansi-shell-session
:class: my-special-block no-copybutton

[92m───────────── [0m[1;35mWelcome to fridadrp-predict_polynomial_slice_borders[0m[92m ─────────────[0m
Using fridadrp.tools.predict_polynomial_slice_borders version                   
[1;36m0.1[0m.dev248+g830b3980e.d20260804                                                 
Reading slice boundary polynomials from                                         
[34mslice_boundary_polynomials_1-[0m[1;36m29.[0m[34mfits[0m                                            
Number of slices defined: [33mSLCNUMT[0m=[1;36m29[0m                                            
Reading [1;36m30[0m slices with polynomial degree [1;36m3[0m [1m([0mleft borders[1m)[0m.                      
Reading [1;36m30[0m slices with polynomial degree [1;36m3[0m [1m([0mright borders[1m)[0m.                     
Predicting polynomial borders for slice number [1;36m30[0m [1m([0mslice ID [1;36m15[0m[1m)[0m                 
Slice ID [1;36m15[0m belongs to the group of slices with ID:                             
[1m[[0m[1;36m1[0m, [1;36m2[0m, [1;36m3[0m, [1;36m4[0m, [1;36m5[0m, [1;36m6[0m, [1;36m7[0m, [1;36m8[0m, [1;36m9[0m, [1;36m10[0m, [1;36m11[0m, [1;36m12[0m, [1;36m13[0m, [1;36m14[0m, [1;36m15[0m[1m][0m.                            
Using the polynomials of the following slice IDs to predict the new borders:    
[1m[[0m[1;36m1[0m, [1;36m2[0m, [1;36m3[0m, [1;36m4[0m, [1;36m5[0m, [1;36m6[0m, [1;36m7[0m, [1;36m8[0m, [1;36m9[0m, [1;36m10[0m, [1;36m11[0m, [1;36m12[0m, [1;36m13[0m, [1;36m14[0m[1m][0m                                 
Fitting along NAXIS1[33m...[0m                                                         
[1;36m0[0m%                                                                              
[1;36m0[0m% [1;36m10[0m%_____________________________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:08[0m|[33mleft[0m=[1;92m1[0m[1;92m:15[0m|[33mexp[0m=[1;92m1[0m[1;92m:23[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m%_________________________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:08[0m|[33mleft[0m=[1;92m0[0m[1;92m:33[0m|[33mexp[0m=[1;92m0[0m[1;92m:42[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m%_____________________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:08[0m|[33mleft[0m=[1;92m0[0m[1;92m:20[0m|[33mexp[0m=[1;92m0[0m[1;92m:28[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m%_________________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:08[0m|[33mleft[0m=[1;92m0[0m[1;92m:13[0m|[33mexp[0m=[1;92m0[0m[1;92m:21[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m%_____________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:09[0m|[33mleft[0m=[1;92m0[0m[1;92m:09[0m|[33mexp[0m=[1;92m0[0m[1;92m:17[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m% [1;36m60[0m%_________________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:19[0m|[33mleft[0m=[1;92m0[0m[1;92m:12[0m|[33mexp[0m=[1;92m0[0m[1;92m:31[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m% [1;36m60[0m% [1;36m70[0m%_____________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:19[0m|[33mleft[0m=[1;92m0[0m[1;92m:08[0m|[33mexp[0m=[1;92m0[0m[1;92m:27[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m% [1;36m60[0m% [1;36m70[0m% [1;36m80[0m%_________ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:19[0m|[33mleft[0m=[1;92m0[0m[1;92m:05[0m|[33mexp[0m=[1;92m0[0m[1;92m:23[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m% [1;36m60[0m% [1;36m70[0m% [1;36m80[0m% [1;36m90[0m%_____ [1m([0m[33melap[0m=[1;92m0[0m[1;92m:19[0m|[33mleft[0m=[1;92m0[0m[1;92m:02[0m|[33mexp[0m=[1;92m0[0m[1;92m:21[0m[1m)[0m      
[1;36m0[0m% [1;36m10[0m% [1;36m20[0m% [1;36m30[0m% [1;36m40[0m% [1;36m50[0m% [1;36m60[0m% [1;36m70[0m% [1;36m80[0m% [1;36m90[0m% [1;36m100[0m% [1m([0m[33melap[0m=[1;92m0[0m[1;92m:20[0m|[33mleft[0m=[1;92m0[0m[1;92m:00[0m|[33mexp[0m=[1;92m0[0m[1;92m:20[0m[1m)[0m      
Copied input polynomials file [34mslice_boundary_polynomials_1-[0m[1;36m29.[0m[34mfits[0m to output    
file [32mfind_borders7/slice_boundary_polynomials_1-30_fixed.fits[0m.                  
Updating the output FITS file with the predicted polynomials for slice number [1;36m30[0m
[1m([0mslice ID [1;36m15[0m[1m)[0m.                                                                  
Total time elapsed: [1;92m0:00:23[0m.[1;36m972502[0m                                              
[92m────────────────────────────────── [0m[1;35m Goodbye! [0m[92m ──────────────────────────────────[0m
```
