#!/bin/bash

current=`pwd`

module load freesurfer

if [ ! -e freesurfer ]; then
    mkdir freesurfer
fi


for aS in $@
do
    echo $aS
    cd $aS
    for aF in * #folders for visits
    do
        if [ ${aF} = 'EEG-MRI' ]; then
            echo "EEG-MRI folder, no swarm"
            continue
        fi
	    echo $aF
        cd $aF
        anat=`ls anat/*T1w.nii.gz`
        ses=`echo $aF | sed 's/ses-//g'`
        echo "${aS}/${aF}/${anat}"
        echo "recon-all -s ${aS}_${ses} -i ${aS}/${aF}/${anat} -all -parallel" >> ${current}/swarm_freesurfer.txt
        cd ${current}/$aS
    done
    cd $current
done

echo ""
echo ""
echo "export SUBJECTS_DIR=`pwd`/freesurfer"
echo "swarm -f swarm_freesurfer.txt -t 8 -g 8 --logdir logs --job-name fsproc --module=freesurfer --time 12:00:00"
