# BaRAD
Scripts and codes used to generate the BaRAD dataset; plus the current version of the dataset under review

## Overview ##
The respository is separated into:<br/>

### Scripts ###
This includes the script to train the random forest regressions [RandomForest_git_revise.R], the script to bias-correct the monthly MERRA-2 dataset [CorrectMERRAdata_git_revise.R], and the Python notebook to account for physical constraints (like negative direct beam radiation values) and generate yearly netCDF files [Adjust data and write Netcdf file (git).ipynb]<br/>
### All_Corrected ###
Includes csv files of flattened vectors of incoming shortwave and diffuse radiation at the surface at the MERRA-2 native resolution.<br/>
### BaRAD_Dataset ###
Yearly netCDF files with bias-corrected monthly values of incoming shortwave radiation (variable name: K_down), diffuse radiation (variable name: K_diff), and direct beam radiation (K_dir) starting from January, 1980.<br/>

========<br/>
The training data from the GEBA database for incoming shortwave and diffuse radiation are in the parent directory, named All_v3.csv and All_diff_v3.csv, respectively. The MERRA-2  reanalysis  dataset  can be  found on  NASA’s website  (https://gmao.gsfc.nasa.gov/reanalysis/MERRA-2/). <br/><br/>

More details about this dataset can be found in Chakraborty & Lee, Under Review
