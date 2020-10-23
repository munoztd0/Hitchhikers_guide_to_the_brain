#!/bin/bash

#small script to loop through files and move or copy them

home=$(eval echo ~$user) #gets your path
path_to_dir='${home}/OBIWAN/DERIVATIVES/GLM/SPM/PIT/GLM-04' #path to the directory you want to loop through
prefix='sub-' #prefix your are looking for
cd ${path_to_dir}


arr=`ls -d ${prefix}*` #creates an array of the directories names

for ((i=0; i<${#arr[@]}; i++)); #loop through array
do
  #do something to each element of array
  cp ${home}/OBIWAN/${arr[$i]}/ses-first/anat/${arr[$i]}_ses-first_run-01_T1w.nii.gz ${home}/OBIWAN/DERIVATIVES/CONN/ANAT/
done

