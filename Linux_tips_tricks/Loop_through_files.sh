#!/bin/bash

#small script to loop through files and move or copy them

home=$(eval echo ~$user) #gets your path
path_to_dir='${home}/OBIWAN/DERIVATIVES/GLM/SPM/PIT/GLM-04' #path to the directory you want to loop through
prefix='sub-' #prefix your are looking for
cd ${path_to_dir}



for file in ${prefix}*; do
    cp ${home}/OBIWAN/DERIVATIVES/PREPROC/$(basename "$file")/ses-second/func/$(basename "$file")_ses-second_task-PIT_smoothBold.nii ${home}/OBIWAN/DERIVATIVES/CONN/PIT/
    echo "$(basename "$file")" # this is two be sure the name is ok
done
