# BaRAD
The total shortwave radiation from the sun either reaches the Earth's surface along its original path - the direct beam radiation - or deviates from that path due to atmospheric scattering (due to the presence of clouds, aerosols and atmospheric gases), known as the diffuse radiation. This diffuse component is important yet understudied, and can modulate the terrestrial energy and water budgets, enhance ecosystem productivity, and impact the energy generation capacity of concentrating solar power. Most global climate models do not archive data on this component and the reanalysis and satellite-derived products that do show large biases compared to observations (https://doi.org/10.1175/JCLI-D-20-0979.1), which are already quite limited. 

Here we archive the scripts and codes used to develop a global 40-year (1980 - 2019) monthly radiation database called BaRAD (Bias-adjusted RADiation dataset) that includes the total shortwave radiation and its partitioning into its diffuse and direct beam components. The dataset is based on a random forest algorithm trained using the Global Energy Balance Archive (GEBA) monthly observation network and implemented on the Modern-Era Retrospective analysis for Research and Applications, Version 2 (MERRA-2) dataset at the native MERRA-2 resolution (0.5 degree by 0.625 degree). The dataset picks up the seasonal, latitudinal, and long-term trends in the MERRA-2 data, but with reduced biases than MERRA-2.

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
