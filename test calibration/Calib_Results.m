% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 777.207611933435260 ; 776.614322227542060 ];

%-- Principal point:
cc = [ 634.186836343587740 ; 398.664602169537770 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.080274039836052 ; -0.143057681321097 ; 0.001158251157291 ; 0.001963378028243 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 2.277137731092287 ; 2.604259903107248 ];

%-- Principal point uncertainty:
cc_error = [ 3.302749287170344 ; 2.875228840089601 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.008632353660339 ; 0.019512624924299 ; 0.001479004380527 ; 0.001682780878803 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 720;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 10;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 2.047310e+00 ; 1.485769e+00 ; -4.342872e-01 ];
Tc_1  = [ -1.205816e+02 ; -9.805577e+01 ; 3.346306e+02 ];
omc_error_1 = [ 3.271533e-03 ; 3.783530e-03 ; 5.611902e-03 ];
Tc_error_1  = [ 1.452001e+00 ; 1.251590e+00 ; 1.113524e+00 ];

%-- Image #2:
omc_2 = [ 2.075539e+00 ; 1.981860e+00 ; -2.578681e-01 ];
Tc_2  = [ -8.927699e+01 ; -9.364440e+01 ; 2.718518e+02 ];
omc_error_2 = [ 3.073224e-03 ; 3.434026e-03 ; 6.387681e-03 ];
Tc_error_2  = [ 1.175216e+00 ; 1.005644e+00 ; 9.574473e-01 ];

%-- Image #3:
omc_3 = [ 1.791080e+00 ; 2.076190e+00 ; -5.477209e-01 ];
Tc_3  = [ -1.070147e+02 ; -1.194134e+02 ; 3.103545e+02 ];
omc_error_3 = [ 2.288064e-03 ; 4.297806e-03 ; 5.968364e-03 ];
Tc_error_3  = [ 1.349878e+00 ; 1.171594e+00 ; 1.013430e+00 ];

%-- Image #4:
omc_4 = [ 2.283292e+00 ; 1.733041e+00 ; 1.065156e+00 ];
Tc_4  = [ -8.888639e+01 ; -4.800824e+01 ; 2.061010e+02 ];
omc_error_4 = [ 4.627115e-03 ; 2.302038e-03 ; 6.150861e-03 ];
Tc_error_4  = [ 9.402556e-01 ; 8.030016e-01 ; 9.885750e-01 ];

%-- Image #5:
omc_5 = [ -1.943108e+00 ; -1.716127e+00 ; -7.763616e-01 ];
Tc_5  = [ -6.593664e+01 ; -7.334835e+01 ; 2.143307e+02 ];
omc_error_5 = [ 2.766267e-03 ; 4.024869e-03 ; 5.730534e-03 ];
Tc_error_5  = [ 9.541166e-01 ; 8.178723e-01 ; 8.413473e-01 ];

%-- Image #6:
omc_6 = [ -1.960941e+00 ; -1.608491e+00 ; 9.791550e-01 ];
Tc_6  = [ -8.084410e+01 ; -6.216411e+01 ; 3.988426e+02 ];
omc_error_6 = [ 4.349847e-03 ; 2.810433e-03 ; 5.666927e-03 ];
Tc_error_6  = [ 1.714680e+00 ; 1.476788e+00 ; 9.527709e-01 ];

%-- Image #7:
omc_7 = [ -1.867622e+00 ; -1.643414e+00 ; -2.915187e-01 ];
Tc_7  = [ -1.501167e+02 ; -6.781286e+01 ; 2.854907e+02 ];
omc_error_7 = [ 3.484605e-03 ; 3.388514e-03 ; 5.869108e-03 ];
Tc_error_7  = [ 1.230588e+00 ; 1.109376e+00 ; 1.132898e+00 ];

%-- Image #8:
omc_8 = [ -1.589234e+00 ; -2.170256e+00 ; -7.123464e-01 ];
Tc_8  = [ -6.564865e+01 ; -9.354391e+01 ; 1.928650e+02 ];
omc_error_8 = [ 2.327583e-03 ; 4.056415e-03 ; 5.988532e-03 ];
Tc_error_8  = [ 8.645798e-01 ; 7.626830e-01 ; 8.133902e-01 ];

%-- Image #9:
omc_9 = [ 2.128201e+00 ; 1.846267e+00 ; 5.205379e-01 ];
Tc_9  = [ -4.969272e+01 ; -7.057703e+01 ; 2.830720e+02 ];
omc_error_9 = [ 4.355298e-03 ; 2.916985e-03 ; 6.647245e-03 ];
Tc_error_9  = [ 1.231144e+00 ; 1.052022e+00 ; 1.199008e+00 ];

%-- Image #10:
omc_10 = [ 2.053024e+00 ; 2.062364e+00 ; -1.832878e-01 ];
Tc_10  = [ -7.600816e+01 ; -7.749048e+01 ; 3.834263e+02 ];
omc_error_10 = [ 4.413370e-03 ; 4.382124e-03 ; 8.884873e-03 ];
Tc_error_10  = [ 1.637159e+00 ; 1.415740e+00 ; 1.410192e+00 ];

