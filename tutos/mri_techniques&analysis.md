[Link to MRI tutorial materials (MRI basics, data management/BIDS formating, univariate and multivariate analysis, VBM and connectivity)](https://drive.switch.ch/index.php/s/OsNWFebnmE8u6jn)

### BIDS (minimal example)

Require to have python >= 3.0 and docker installed

```bash
#!/bin/bash
#instal bidskit via Docker
home=$(eval echo ~$user)/PROJECT_FOLDER_NAME

# where ~/PROJECT_FOLDER_NAME/SOURCEDATA/brain/ is where you have your raw dicom files

#for subj in 01 , #02 03 04 05 06 07 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
  #do
docker run -it -v ${home}/SOURCEDATA/brain/ jmtyszka/bidskit -d ${home}

#biskit will anonymize the dataset

#If you're running bidskit from the shell you can either run bidskit without arguments from within the dataset root

# cd /PATH_TO_YOUR_DATASET_FOLDER/
# bidskit
#or from another folder by specifying the BIDS dataset directory

# bidskit -d /PATH_TO_YOUR_DATASET_FOLDER/

#if that does not work you can do it manually with dcm2niix
```
