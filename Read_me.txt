"Using unsupervised learning methods to identify essential genes associated with SARS-CoV-2 as potential therapeutic targets for COVID-19"

Corresponding author: Mahnaz Habibi (Email: m-habibi@qiau.ac.ir), Golnaz Taheri (Email: golnazt@kth.se)



===============================================================================


# Laplacian Score for Feature Selection (LSFS).
Version 1.0

If you want to calculate the Laplacian Score values for each feature in the new dataset, please
prepare your input file in the ".mat" format.

For example, "All_Features=[x_ij]_m*n" represents the feature matrix where x_ij represents the j-th feature of the i-th sample.

You can see the input file "Feature_Matrix.mat" and use the following arguments in the MATLAB command line:
load('Feature_Matrix.mat', 'All_Features')

==============

The entry point of the code is the script "LSFS.m".

To run the code, use the following arguments in the MATLAB command line:

"LSFS_Score=LSFS(All_Features, Epsilon, threshold);"

You can define the Epsilon and threshold values between 0 and 100.

The output file is "LSFS_Score" and contains the Laplacian Score for each feature.







===============================================================================
# Non-Convex Regularized Self-Representation (RSR).

Version 1.0

If you want to calculate the score values for each feature in the new dataset, please prepare your input file in the ".mat" format in the MATLAB.

For example, "All_Features=[x_ij]" represents the feature matrix where x_ij represents the j-th feature of the i-th sample.

You can see the input file "Feature_Matrix.mat" and use the following arguments in the MATLAB command line:

load('Feature_Matrix.mat', 'All_Features')

==============

The entry point of the code is the script RSR.m.

To run the program, use the following arguments in the MATLAB command line:

"RSR_Score = RSR(W_initial, All_Features, p, landa, N, Epsilon);"

W_initial is defined randomly as a matrix (n*n).

p and epsilon values are defined between 0 and 1.

You can define lambda > 0 and N > 0.

The output file is "RSR_Score" and contains the score value for each feature.


===============================================================================
# Structure Preserving Nonnegative Feature Self-Representation (SPNFSR).

Version 1.0

If you want to calculate the score values for each feature in the new dataset, please prepare your input file in the "Input.mat" format in MATLAB.

For example, "All_Features=[x_ij]" represents the feature matrix where x_ij represents the j-th feature of the i-th sample.

You can see the input file "Feature_Matrix.mat" and use the following arguments in the MATLAB command line:

load('Feature_Matrix.mat', 'All_Features')

==============

The entry point of the code is the script SPNFSR.m

To run the program, use the following arguments in the MATLAB command line:

"SPNFSR_Score = SPNFSR(k,N,W_initial,Alpha,Beta,X);"

You can also specify k > 0 and N > 0 values.

W_initial is defined randomly as a matrix (n*n).

You can define the alpha and beta values between 0 and 10.

The output file is "SPNFSR_Score" and contains the score value for each feature.


