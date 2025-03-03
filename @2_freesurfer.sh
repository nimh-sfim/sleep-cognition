#!/bin/bash

current=`pwd`

module load freesurfer

mkdir freesurfer

for aS in $@
do
    #echo $aS
    cd $aS
    for aF in * #folders for visits
    do
        if [ ${aF} = 'EEG-MRI' ]; then
            #echo "EEG-MRI folder, no swarm"
            continue
        fi
        cd $aF
        anat=`ls anat/SAG_BRAVO*.nii.gz`
        #echo "${aS}/${aF}/${anat}"
        echo "recon-all -s ${aS}_${aF} -i ${aS}/${aF}/${anat} -all -parallel" >> ${current}/swarm_freesurfer.txt
        cd ${current}/$aS
    done
    cd $current
done

echo "Please run these two commands:"
echo "export SUBJECTS_DIR=`pwd`/freesurfer"
echo "swarm -f swarm_freesurfer.txt -t 8 -g 8 --logdir logs --job-name fsproc --module=freesurfer --time 16:00:00"
