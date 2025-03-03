#!/bin/bash

current=`pwd`

module load afni

mkdir anat

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
        anat=`ls anat/SAG_BRAVO*.nii.gz`
        echo "${aS}/${aF}/${anat}"
        mkdir -p ${current}/anat/${aS}/${aF}
        echo "sswarper2 -input ${aS}/${aF}/${anat} -base MNI152_2009_template_SSW.nii.gz -subid ${aS}_${aF} -odir ${current}/anat/${aS}/${aF}" >> ${current}/swarm_anatSS.txt
        cd ${current}/$aS
    done
    cd $current
done

echo "swarm -f swarm_anatSS.txt -t 10 -g 8 --logdir logs --job-name sswarper2proc --module=afni --time 08:00:00"
