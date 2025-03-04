# Sleep-Cognition Study
---

Subproject Leaders: Pete Molfese & Peter Bandettini

Main Question: How does sleep restriction impact anatomical and functional brains

Each participant has multiple sessions throughout the study. 

---
## Code

`@2_freesurfer.sh` - script for running freesurfer recon-all


---
## File naming conventions

Protocol (Scanner Sequence): SAG_BRAVO_T1, MEPI, etc
sXX - scanner session, somewhat arbitrary
eY - echo number, sequential

```
├── README.md
├── sub-3
├── ses-AcuteRecovery
│   ├── anat
│   │   ├── sub-3_ses-AcuteRecovery_T1w.json
│   │   └── sub-3_ses-AcuteRecovery_T1w.nii.gz
│   ├── fmap
│   │   ├── sub-3_ses-AcuteRecovery_echo-1_blip.json
│   │   ├── sub-3_ses-AcuteRecovery_echo-1_blip.nii.gz
│   │   ├── sub-3_ses-AcuteRecovery_echo-2_blip.json
│   │   ├── sub-3_ses-AcuteRecovery_echo-2_blip.nii.gz
│   │   ├── sub-3_ses-AcuteRecovery_echo-3_blip.json
│   │   └── sub-3_ses-AcuteRecovery_echo-3_blip.nii.gz
│   └── func
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-01_echo-1_bold.json
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-01_echo-1_bold.nii.gz
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-01_echo-2_bold.json
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-01_echo-2_bold.nii.gz
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-01_echo-3_bold.json
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-01_echo-3_bold.nii.gz
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-02_echo-1_bold.json
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-02_echo-1_bold.nii.gz
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-02_echo-2_bold.json
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-02_echo-2_bold.nii.gz
│       ├── sub-3_ses-AcuteRecovery_task-rest_run-02_echo-3_bold.json
│       └── sub-3_ses-AcuteRecovery_task-rest_run-02_echo-3_bold.nii.gz
├── ses-Baseline
│   ├── anat
│   │   ├── sub-3_ses-Baseline_T1w.json
│   │   └── sub-3_ses-Baseline_T1w.nii.gz
│   ├── fmap
│   │   ├── sub-3_ses-Baseline_echo-1_blip.json
│   │   ├── sub-3_ses-Baseline_echo-1_blip.nii.gz
│   │   ├── sub-3_ses-Baseline_echo-2_blip.json
│   │   ├── sub-3_ses-Baseline_echo-2_blip.nii.gz
│   │   ├── sub-3_ses-Baseline_echo-3_blip.json
│   │   └── sub-3_ses-Baseline_echo-3_blip.nii.gz
│   └── func
│       ├── sub-3_ses-Baseline_task-rest_echo-1_bold.json
│       ├── sub-3_ses-Baseline_task-rest_echo-1_bold.nii.gz
│       ├── sub-3_ses-Baseline_task-rest_echo-2_bold.json
│       ├── sub-3_ses-Baseline_task-rest_echo-2_bold.nii.gz
│       ├── sub-3_ses-Baseline_task-rest_echo-3_bold.json
│       └── sub-3_ses-Baseline_task-rest_echo-3_bold.nii.gz
├── ses-EndSleepRestriction
│   ├── anat
│   │   ├── sub-3_ses-EndSleepRestriction_T1w.json
│   │   └── sub-3_ses-EndSleepRestriction_T1w.nii.gz
│   ├── fmap
│   │   ├── sub-3_ses-EndSleepRestriction_echo-1_blip.json
│   │   ├── sub-3_ses-EndSleepRestriction_echo-1_blip.nii.gz
│   │   ├── sub-3_ses-EndSleepRestriction_echo-2_blip.json
│   │   ├── sub-3_ses-EndSleepRestriction_echo-2_blip.nii.gz
│   │   ├── sub-3_ses-EndSleepRestriction_echo-3_blip.json
│   │   └── sub-3_ses-EndSleepRestriction_echo-3_blip.nii.gz
│   └── func
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-01_echo-1_bold.json
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-01_echo-1_bold.nii.gz
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-01_echo-2_bold.json
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-01_echo-2_bold.nii.gz
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-01_echo-3_bold.json
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-01_echo-3_bold.nii.gz
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-02_echo-1_bold.json
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-02_echo-1_bold.nii.gz
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-02_echo-2_bold.json
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-02_echo-2_bold.nii.gz
│       ├── sub-3_ses-EndSleepRestriction_task-rest_run-02_echo-3_bold.json
│       └── sub-3_ses-EndSleepRestriction_task-rest_run-02_echo-3_bold.nii.gz
├── ses-LongtermRecovery
│   ├── anat
│   │   ├── sub-3_ses-LongtermRecovery_T1w.json
│   │   └── sub-3_ses-LongtermRecovery_T1w.nii.gz
│   ├── fmap
│   │   ├── sub-3_ses-LongtermRecovery_echo-1_blip.json
│   │   ├── sub-3_ses-LongtermRecovery_echo-1_blip.nii.gz
│   │   ├── sub-3_ses-LongtermRecovery_echo-2_blip.json
│   │   ├── sub-3_ses-LongtermRecovery_echo-2_blip.nii.gz
│   │   ├── sub-3_ses-LongtermRecovery_echo-3_blip.json
│   │   └── sub-3_ses-LongtermRecovery_echo-3_blip.nii.gz
│   └── func
│       ├── sub-3_ses-LongtermRecovery_task-rest_echo-1_bold.json
│       ├── sub-3_ses-LongtermRecovery_task-rest_echo-1_bold.nii.gz
│       ├── sub-3_ses-LongtermRecovery_task-rest_echo-2_bold.json
│       ├── sub-3_ses-LongtermRecovery_task-rest_echo-2_bold.nii.gz
│       ├── sub-3_ses-LongtermRecovery_task-rest_echo-3_bold.json
│       └── sub-3_ses-LongtermRecovery_task-rest_echo-3_bold.nii.gz
└── ses-MidSleepRestriction
	├── anat
	│   ├── sub-3_ses-MidSleepRestriction_T1w.json
	│   └── sub-3_ses-MidSleepRestriction_T1w.nii.gz
	├── fmap
	│   ├── sub-3_ses-MidSleepRestriction_echo-1_blip.json
	│   ├── sub-3_ses-MidSleepRestriction_echo-1_blip.nii.gz
	│   ├── sub-3_ses-MidSleepRestriction_echo-2_blip.json
	│   ├── sub-3_ses-MidSleepRestriction_echo-2_blip.nii.gz
	│   ├── sub-3_ses-MidSleepRestriction_echo-3_blip.json
	│   └── sub-3_ses-MidSleepRestriction_echo-3_blip.nii.gz
	└── func
		├── sub-3_ses-MidSleepRestriction_task-rest_run-01_echo-1_bold.json
		├── sub-3_ses-MidSleepRestriction_task-rest_run-01_echo-1_bold.nii.gz
		├── sub-3_ses-MidSleepRestriction_task-rest_run-01_echo-2_bold.json
		├── sub-3_ses-MidSleepRestriction_task-rest_run-01_echo-2_bold.nii.gz
		├── sub-3_ses-MidSleepRestriction_task-rest_run-01_echo-3_bold.json
		├── sub-3_ses-MidSleepRestriction_task-rest_run-01_echo-3_bold.nii.gz
		├── sub-3_ses-MidSleepRestriction_task-rest_run-02_echo-1_bold.json
		├── sub-3_ses-MidSleepRestriction_task-rest_run-02_echo-1_bold.nii.gz
		├── sub-3_ses-MidSleepRestriction_task-rest_run-02_echo-2_bold.json
		├── sub-3_ses-MidSleepRestriction_task-rest_run-02_echo-2_bold.nii.gz
		├── sub-3_ses-MidSleepRestriction_task-rest_run-02_echo-3_bold.json
		└── sub-3_ses-MidSleepRestriction_task-rest_run-02_echo-3_bold.nii.gz
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
│       ├── Subject X Acute Recovery.eeg
│       ├── Subject X Acute Recovery.vhdr
│       └── Subject X Acute Recovery.vmrk
```