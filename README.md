# BaRAD
The diffuse component of solar radiation is an important, but understudied, component of the Earth's surface radiation budget. Most global climate models do not archive data on this component and observations of diffuse radiation are rare. Here, we archive the scripts and codes used to develop a global 40-year (1980 - 2019) monthly radiation database called BaRAD (Bias-adjusted RADiation dataset) that includes the total shortwave radiation and its partitioning into its diffuse and direct beam components. The dataset is based on a random forest algorithm trained using the Global Energy Balance Archive (GEBA) monthly observation network and implemented on the Modern-Era Retrospective analysis for Research and Applications, Version 2 (MERRA-2) dataset at the native MERRA-2 resolution (0.5 degree by 0.625 degree). The dataset picks up the seasonal, latitudinal, and long-term trends in the MERRA-2 data, but with reduced biases than MERRA-2.

The BaRAD dataset can reduce uncertainties in modelling surface energy and carbon budgets and help optimize the placement of concentrating solar power systems.

## Overview ##
The respository is separated into:<br/>

### Scripts ###
This includes the script to train the random forest regressions [RandomForest_git_revise.R], the script to bias-correct the monthly MERRA-2 dataset [CorrectMERRAdata_git_revise.R], the Python notebook to account for physical constraints (like negative direct beam radiation values) and generate yearly netCDF files [Adjust data and write Netcdf file (git).ipynb], and a Python notebook to extract and plot the BaRAD variables for a location [Example.ipynb]<br/>
### All_Corrected ###
Includes csv files of flattened vectors of incoming shortwave and diffuse radiation at the surface at the MERRA-2 native resolution.<br/>
### BaRAD_Dataset ###
Yearly netCDF files with bias-corrected monthly values of incoming shortwave radiation (variable name: K_down), diffuse radiation (variable name: K_diff), and direct beam radiation (K_dir) starting from January, 1980.<br/>

========<br/>
The training data from the GEBA database for incoming shortwave and diffuse radiation are in the parent directory, named All_v3.csv and All_diff_v3.csv, respectively. The MERRA-2  reanalysis  dataset  can be  found on  NASA’s website  (https://gmao.gsfc.nasa.gov/reanalysis/MERRA-2/). <br/><br/>

The BaRAD dataset is licensed under Creative Commons Attribution 4.0 International (CC-BY-4.0).

More details about this dataset can be found in Chakraborty & Lee, 2021
