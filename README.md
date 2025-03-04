# Sleep-Cognition Study
---

Subproject Leaders: Pete Molfese & Peter Bandettini

Main Question: How does sleep restriction impact anatomical and functional brains

Each participant has multiple sessions throughout the study. 

---
## Code

`code/run_freesurfer.sh` - script for running freesurfer recon-all

`swarm/swarm_freesurfer.txt` - swarm for initial freesurfer

`swarm/swarm_longitude.txt` - swarm for longitudinal pipeline part 1

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
│       ├── Subject X Acute Recovery.eeg
│       ├── Subject X Acute Recovery.vhdr
│       └── Subject X Acute Recovery.vmrk
```