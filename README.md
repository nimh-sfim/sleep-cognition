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
├── Session_X
│   ├── 1-Baseline
│   │   ├── anat
│   │   │   ├── SAG_BRAVO_T1_FULL_s23_e1.json
│   │   │   └── SAG_BRAVO_T1_FULL_s23_e1.nii.gz
│   │   ├── blip
│   │   │   ├── MEPI_rev_blip_s25_e1.json
│   │   │   ├── MEPI_rev_blip_s25_e1.nii.gz
│   │   │   ├── MEPI_rev_blip_s25_e2.json
│   │   │   ├── MEPI_rev_blip_s25_e2.nii.gz
│   │   │   ├── MEPI_rev_blip_s25_e3.json
│   │   │   └── MEPI_rev_blip_s25_e3.nii.gz
│   │   └── func
│   │       ├── MEPI_multiphase_s27_e1.json
│   │       ├── MEPI_multiphase_s27_e1.nii.gz
│   │       ├── MEPI_multiphase_s27_e2.json
│   │       ├── MEPI_multiphase_s27_e2.nii.gz
│   │       ├── MEPI_multiphase_s27_e3.json
│   │       └── MEPI_multiphase_s27_e3.nii.gz
│   ├── 2-Mid-SleepRestriction
│   │   ├── anat
│   │   │   ├── SAG_BRAVO_T1_FULL_s23_e1.json
│   │   │   └── SAG_BRAVO_T1_FULL_s23_e1.nii.gz
│   │   ├── blip
│   │   │   ├── MEPI_rev_blip_s25_e1.json
│   │   │   ├── MEPI_rev_blip_s25_e1.nii.gz
│   │   │   ├── MEPI_rev_blip_s25_e2.json
│   │   │   ├── MEPI_rev_blip_s25_e2.nii.gz
│   │   │   ├── MEPI_rev_blip_s25_e3.json
│   │   │   └── MEPI_rev_blip_s25_e3.nii.gz
│   │   └── func
│   │       ├── MEPI_multiphase_s26_e1.json
│   │       ├── MEPI_multiphase_s26_e1.nii.gz
│   │       ├── MEPI_multiphase_s26_e2.json
│   │       ├── MEPI_multiphase_s26_e2.nii.gz
│   │       ├── MEPI_multiphase_s26_e3.json
│   │       ├── MEPI_multiphase_s26_e3.nii.gz
│   │       ├── MEPI_multiphase_s27_e1.json
│   │       ├── MEPI_multiphase_s27_e1.nii.gz
│   │       ├── MEPI_multiphase_s27_e2.json
│   │       ├── MEPI_multiphase_s27_e2.nii.gz
│   │       ├── MEPI_multiphase_s27_e3.json
│   │       └── MEPI_multiphase_s27_e3.nii.gz
│   ├── 3-EndSleepRestriction
│   │   ├── anat
│   │   │   ├── SAG_BRAVO_T1_FULL_s23_e1.json
│   │   │   └── SAG_BRAVO_T1_FULL_s23_e1.nii.gz
│   │   ├── blip
│   │   │   ├── MEPI_rev_blip_s25_e1.json
│   │   │   ├── MEPI_rev_blip_s25_e1.nii.gz
│   │   │   ├── MEPI_rev_blip_s25_e2.json
│   │   │   ├── MEPI_rev_blip_s25_e2.nii.gz
│   │   │   ├── MEPI_rev_blip_s25_e3.json
│   │   │   └── MEPI_rev_blip_s25_e3.nii.gz
│   │   └── func
│   │       ├── MEPI_multiphase_s26_e1.json
│   │       ├── MEPI_multiphase_s26_e1.nii.gz
│   │       ├── MEPI_multiphase_s26_e2.json
│   │       ├── MEPI_multiphase_s26_e2.nii.gz
│   │       ├── MEPI_multiphase_s26_e3.json
│   │       ├── MEPI_multiphase_s26_e3.nii.gz
│   │       ├── MEPI_multiphase_s27_e1.json
│   │       ├── MEPI_multiphase_s27_e1.nii.gz
│   │       ├── MEPI_multiphase_s27_e2.json
│   │       ├── MEPI_multiphase_s27_e2.nii.gz
│   │       ├── MEPI_multiphase_s27_e3.json
│   │       └── MEPI_multiphase_s27_e3.nii.gz
│   ├── 4-AcuteRecovery
│   │   ├── anat
│   │   │   ├── SAG_BRAVO_T1_FULL_s24_e1.json
│   │   │   └── SAG_BRAVO_T1_FULL_s24_e1.nii.gz
│   │   ├── blip
│   │   │   ├── MEPI_rev_blip_s26_e1.json
│   │   │   ├── MEPI_rev_blip_s26_e1.nii.gz
│   │   │   ├── MEPI_rev_blip_s26_e2.json
│   │   │   ├── MEPI_rev_blip_s26_e2.nii.gz
│   │   │   ├── MEPI_rev_blip_s26_e3.json
│   │   │   └── MEPI_rev_blip_s26_e3.nii.gz
│   │   └── func
│   │       ├── MEPI_multiphase_s27_e1.json
│   │       ├── MEPI_multiphase_s27_e1.nii.gz
│   │       ├── MEPI_multiphase_s27_e2.json
│   │       ├── MEPI_multiphase_s27_e2.nii.gz
│   │       ├── MEPI_multiphase_s27_e3.json
│   │       ├── MEPI_multiphase_s27_e3.nii.gz
│   │       ├── MEPI_multiphase_s28_e1.json
│   │       ├── MEPI_multiphase_s28_e1.nii.gz
│   │       ├── MEPI_multiphase_s28_e2.json
│   │       ├── MEPI_multiphase_s28_e2.nii.gz
│   │       ├── MEPI_multiphase_s28_e3.json
│   │       └── MEPI_multiphase_s28_e3.nii.gz
│   └── 5-Long-termRecovery
│       ├── anat
│       │   ├── SAG_BRAVO_T1_FULL_s22_e1.json
│       │   └── SAG_BRAVO_T1_FULL_s22_e1.nii.gz
│       ├── blip
│       │   ├── MEPI_rev_blip_s24_e1.json
│       │   ├── MEPI_rev_blip_s24_e1.nii.gz
│       │   ├── MEPI_rev_blip_s24_e2.json
│       │   ├── MEPI_rev_blip_s24_e2.nii.gz
│       │   ├── MEPI_rev_blip_s24_e3.json
│       │   └── MEPI_rev_blip_s24_e3.nii.gz
│       └── func
│           ├── MEPI_multiphase_s25_e1.json
│           ├── MEPI_multiphase_s25_e1.nii.gz
│           ├── MEPI_multiphase_s25_e2.json
│           ├── MEPI_multiphase_s25_e2.nii.gz
│           ├── MEPI_multiphase_s25_e3.json
│           └── MEPI_multiphase_s25_e3.nii.gz
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