# Sleep-Cognition Study
---

Subproject Leaders: Pete Molfese & Peter Bandettini

Main Question: How does sleep restriction impact anatomical and functional brains

Each participant has multiple sessions throughout the study. 

---
## Code

The entire code for processing data for this study.  The `code` folder includes scripts, while the `swarm` directory
includes the swarm files for running those scripts on a cluster or with GNU Parallel.  Data were first converted to NIFTI with `convert_dicom.sh`
using the associated `bids_config.txt` file. Next anatomical data were processed in the freesurfer longitudinal pipeline
which can be done using `run_freesurfer` (or `swarm_freesurfer.txt`) and then both `swarm_longitude.txt` and `swarm_longitude_2.txt`.

Once those are completed, the afni_proc can be performed using `afni_process.sh` or as a batch in `swarm_afni.txt`.

`code/convert_dicom.sh` - converts dicom files to NIFTI using dcm2bids (and dcm2niix obviously)

`code/bids_config.txt` - bids config for dcm2bids

`code/run_freesurfer.sh` - script for running freesurfer recon-all

`code/afni_process.sh` - afni_proc.py script for processing resting state

`swarm/swarm_freesurfer.txt` - swarm for initial freesurfer

`swarm/swarm_longitude.txt` - swarm for longitudinal pipeline part 1

`swarm/swarm_longitude_2.txt` - swarm for longitudinal pipeline part 2

`swarm/swarm_afni.txt` - swarm for running afni_proc.py on all subjects and sessions

---
## File naming conventions

BIDS - or my best attempt.

## Visits

1. Baseline
2. Mid-Sleep Restriction
3. End Sleep Restriction
4. Acute Recovery
5. Long-term Recovery

```
├── README.md
├── sub-X
├── ses-AcuteRecovery
│   ├── anat
│   │   ├── sub-X_ses-AcuteRecovery_T1w.json
│   │   └── sub-X_ses-AcuteRecovery_T1w.nii.gz
│   ├── fmap
│   │   ├── sub-X_ses-AcuteRecovery_echo-1_blip.json
│   │   ├── sub-X_ses-AcuteRecovery_echo-1_blip.nii.gz
│   │   ├── sub-X_ses-AcuteRecovery_echo-2_blip.json
│   │   ├── sub-X_ses-AcuteRecovery_echo-2_blip.nii.gz
│   │   ├── sub-X_ses-AcuteRecovery_echo-3_blip.json
│   │   └── sub-X_ses-AcuteRecovery_echo-3_blip.nii.gz
│   └── func
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-01_echo-1_bold.json
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-01_echo-1_bold.nii.gz
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-01_echo-2_bold.json
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-01_echo-2_bold.nii.gz
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-01_echo-3_bold.json
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-01_echo-3_bold.nii.gz
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-02_echo-1_bold.json
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-02_echo-1_bold.nii.gz
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-02_echo-2_bold.json
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-02_echo-2_bold.nii.gz
│       ├── sub-X_ses-AcuteRecovery_task-rest_run-02_echo-3_bold.json
│       └── sub-X_ses-AcuteRecovery_task-rest_run-02_echo-3_bold.nii.gz
├── ses-Baseline
│   ├── anat
│   │   ├── sub-X_ses-Baseline_T1w.json
│   │   └── sub-X_ses-Baseline_T1w.nii.gz
│   ├── fmap
│   │   ├── sub-X_ses-Baseline_echo-1_blip.json
│   │   ├── sub-X_ses-Baseline_echo-1_blip.nii.gz
│   │   ├── sub-X_ses-Baseline_echo-2_blip.json
│   │   ├── sub-X_ses-Baseline_echo-2_blip.nii.gz
│   │   ├── sub-X_ses-Baseline_echo-3_blip.json
│   │   └── sub-X_ses-Baseline_echo-3_blip.nii.gz
│   └── func
│       ├── sub-X_ses-Baseline_task-rest_echo-1_bold.json
│       ├── sub-X_ses-Baseline_task-rest_echo-1_bold.nii.gz
│       ├── sub-X_ses-Baseline_task-rest_echo-2_bold.json
│       ├── sub-X_ses-Baseline_task-rest_echo-2_bold.nii.gz
│       ├── sub-X_ses-Baseline_task-rest_echo-3_bold.json
│       └── sub-X_ses-Baseline_task-rest_echo-3_bold.nii.gz
├── ses-EndSleepRestriction
│   ├── anat
│   │   ├── sub-X_ses-EndSleepRestriction_T1w.json
│   │   └── sub-X_ses-EndSleepRestriction_T1w.nii.gz
│   ├── fmap
│   │   ├── sub-X_ses-EndSleepRestriction_echo-1_blip.json
│   │   ├── sub-X_ses-EndSleepRestriction_echo-1_blip.nii.gz
│   │   ├── sub-X_ses-EndSleepRestriction_echo-2_blip.json
│   │   ├── sub-X_ses-EndSleepRestriction_echo-2_blip.nii.gz
│   │   ├── sub-X_ses-EndSleepRestriction_echo-3_blip.json
│   │   └── sub-X_ses-EndSleepRestriction_echo-3_blip.nii.gz
│   └── func
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-01_echo-1_bold.json
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-01_echo-1_bold.nii.gz
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-01_echo-2_bold.json
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-01_echo-2_bold.nii.gz
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-01_echo-3_bold.json
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-01_echo-3_bold.nii.gz
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-02_echo-1_bold.json
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-02_echo-1_bold.nii.gz
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-02_echo-2_bold.json
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-02_echo-2_bold.nii.gz
│       ├── sub-X_ses-EndSleepRestriction_task-rest_run-02_echo-3_bold.json
│       └── sub-X_ses-EndSleepRestriction_task-rest_run-02_echo-3_bold.nii.gz
├── ses-LongtermRecovery
│   ├── anat
│   │   ├── sub-X_ses-LongtermRecovery_T1w.json
│   │   └── sub-X_ses-LongtermRecovery_T1w.nii.gz
│   ├── fmap
│   │   ├── sub-X_ses-LongtermRecovery_echo-1_blip.json
│   │   ├── sub-X_ses-LongtermRecovery_echo-1_blip.nii.gz
│   │   ├── sub-X_ses-LongtermRecovery_echo-2_blip.json
│   │   ├── sub-X_ses-LongtermRecovery_echo-2_blip.nii.gz
│   │   ├── sub-X_ses-LongtermRecovery_echo-3_blip.json
│   │   └── sub-X_ses-LongtermRecovery_echo-3_blip.nii.gz
│   └── func
│       ├── sub-X_ses-LongtermRecovery_task-rest_echo-1_bold.json
│       ├── sub-X_ses-LongtermRecovery_task-rest_echo-1_bold.nii.gz
│       ├── sub-X_ses-LongtermRecovery_task-rest_echo-2_bold.json
│       ├── sub-X_ses-LongtermRecovery_task-rest_echo-2_bold.nii.gz
│       ├── sub-X_ses-LongtermRecovery_task-rest_echo-3_bold.json
│       └── sub-X_ses-LongtermRecovery_task-rest_echo-3_bold.nii.gz
└── ses-MidSleepRestriction
	├── anat
	│   ├── sub-X_ses-MidSleepRestriction_T1w.json
	│   └── sub-X_ses-MidSleepRestriction_T1w.nii.gz
	├── fmap
	│   ├── sub-X_ses-MidSleepRestriction_echo-1_blip.json
	│   ├── sub-X_ses-MidSleepRestriction_echo-1_blip.nii.gz
	│   ├── sub-X_ses-MidSleepRestriction_echo-2_blip.json
	│   ├── sub-X_ses-MidSleepRestriction_echo-2_blip.nii.gz
	│   ├── sub-X_ses-MidSleepRestriction_echo-3_blip.json
	│   └── sub-X_ses-MidSleepRestriction_echo-3_blip.nii.gz
	└── func
		├── sub-X_ses-MidSleepRestriction_task-rest_run-01_echo-1_bold.json
		├── sub-X_ses-MidSleepRestriction_task-rest_run-01_echo-1_bold.nii.gz
		├── sub-X_ses-MidSleepRestriction_task-rest_run-01_echo-2_bold.json
		├── sub-X_ses-MidSleepRestriction_task-rest_run-01_echo-2_bold.nii.gz
		├── sub-X_ses-MidSleepRestriction_task-rest_run-01_echo-3_bold.json
		├── sub-X_ses-MidSleepRestriction_task-rest_run-01_echo-3_bold.nii.gz
		├── sub-X_ses-MidSleepRestriction_task-rest_run-02_echo-1_bold.json
		├── sub-X_ses-MidSleepRestriction_task-rest_run-02_echo-1_bold.nii.gz
		├── sub-X_ses-MidSleepRestriction_task-rest_run-02_echo-2_bold.json
		├── sub-X_ses-MidSleepRestriction_task-rest_run-02_echo-2_bold.nii.gz
		├── sub-X_ses-MidSleepRestriction_task-rest_run-02_echo-3_bold.json
		└── sub-X_ses-MidSleepRestriction_task-rest_run-02_echo-3_bold.nii.gz
(OPTIONAL)
│   ├── EEG-MRI
│       ├── Subject X - Baseline.eeg
│       ├── Subject X - Baseline.vhdr
│       ├── Subject X - Baseline.vmrk
│       ├── Subject X - Long-Term Recovery.eeg
│       ├── Subject X - Long-Term Recovery.vhdr
│       ├── Subject X - Long-Term Recovery.vmrk
│       ├── Subject X - Long-Term Recovery.eeg
│       ├── Subject X - Long-Term Recovery.vhdr
│       ├── Subject X - Long-Term Recovery.vmrk
│       ├── Subject X - Mid-SR.eeg
│       ├── Subject X - Mid-SR.vhdr
│       ├── Subject X - Mid-SR.vmrk
│       ├── Subject X - Acute Recovery.eeg
│       ├── Subject X - Acute Recovery.vhdr
│       └── Subject X - Acute Recovery.vmrk
```