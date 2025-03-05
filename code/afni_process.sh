#!/bin/bash

module load afni

current=`pwd`

if [ ! -e processed/${1}/${2} ]; then
    mkdir -p processed/${1}/${2}
fi

echo "$1 $2"

subj=${1}
ses=${2}

cd $1 #subject folder
cd $2 #session folder
data_dir=`pwd`


#echos on prisma: 14.6 36.7 58.9
#echos 3tb: 17.6 46.5 74.9

afni_proc.py                                                                    \
-subj_id                  ${subj}                                               \
-copy_anat                ${current}/freesurfer/$subj/SUMA/brain.nii            \
-out_dir                  ${current}/processed/${1}/${2}/${1}_${2}.rest    \
-script                   ${current}/processed/${1}/${2}/proc_${1}_${2}.tcsh    \
-anat_has_skull           no                                                    \
-dsets_me_echo            func/${subj}_*_echo-1_bold.nii.gz                     \
-dsets_me_echo            func/${subj}_*_echo-2_bold.nii.gz                     \
-dsets_me_echo            func/${subj}_*_echo-3_bold.nii.gz                     \
-blip_forward_dset        func/${subj}_${ses}_task-rest_echo-1_bold.nii.gz'[0]'                \
-blip_reverse_dset        fmap/${subj}_${ses}_echo-1_blip.nii.gz'[0]'                     \
-echo_times               9.7 24.2 38.8                                         \
-blocks                   despike tshift align tlrc volreg mask  \
                        combine blur scale regress               \
-radial_correlate_blocks  tcat volreg                            \
-tcat_remove_first_trs    3                                      \
-align_unifize_epi        local                                  \
-align_opts_aea           -cost lpc+ZZ                           \
                        -giant_move                              \
                        -check_flip                              \
-tlrc_base                MNI152_2009_template_SSW.nii.gz        \
-tlrc_NL_warp                                                    \
-volreg_align_to          MIN_OUTLIER                            \
-volreg_align_e2a                                                \
-volreg_tlrc_warp                                                \
-volreg_compute_tsnr      yes                                    \
-mask_epi_anat            yes                                    \
-mask_dilate              2                                      \
-combine_method           m_tedana                               \
-blur_size                4.0                                    \
-regress_motion_per_run                                          \
-regress_censor_motion    0.2                                    \
-regress_censor_outliers  0.05                                   \
-regress_bandpass         0.01 0.1                               \
-regress_apply_mot_types  demean deriv                           \
-regress_3dD_stop                                                \
-regress_reml_exec                                               \
-regress_compute_fitts                                           \
-regress_make_ideal_sum   sum_ideal.1D                           \
-regress_est_blur_epits                                          \
-regress_est_blur_errts                                          \
-regress_run_clustsim     no                                     \
-html_review_style        pythonic                               \
-execute