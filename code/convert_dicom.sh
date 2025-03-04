#!/bin/bash

current=`pwd`

for aS in $@
do
    cd $aS
    
    for aF in *
    do
        #mkdir -p ${current}/fmri/$aS/$aF
        #echo "dcm2niix_afni -z y -f %d_%z_s%s_e%e -o ${current}/fmri/$aS/$aF $aF"
        #dcm2niix_afni -z y -f %d_%z_s%s_e%e -o ${current}/fmri/$aS/$aF "$aF"
        sub=`echo $aS | sed 's/Session_/sub-'/`
        session=`echo $aF | cut -c 3- | sed 's/-//g'`
        #echo $sub
        #echo $session
         dcm2bids \
         -d ${current}/${aS}/${aF}/* \
         -p ${sub} \
         -s ${session} \
         -o ${current}/fmri \
         -c ${current}/bids_config.txt \
         --auto_extract_entities
        
        cd ${current}/${aS}
    done
    
    cd $current
done