#!/bin/bash

3dLME -prefix SamWR_lh.niml.dset -jobs 8 \
-model "0+timepoint" \
-ranEff '~1' \
-num_glt 8 \
-gltLabel 1 'Baseline-MidSleep' -gltCode 1 'timepoint : 1*Baseline -1*MidSleepRestriction' \
-gltLabel 2 'Baseline-EndSleep' -gltCode 2 'timepoint : 1*Baseline -1*EndSleepRestriction' \
-gltLabel 3 'Baseline-AcuteRec' -gltCode 3 'timepoint : 1*Baseline -1*AcuteRecovery' \
-gltLabel 4 'Baseline-LongRec' -gltCode 4 'timepoint : 1*Baseline -1*LongtermRecovery' \
-gltLabel 5 'MidSleep-EndSleep' -gltCode 5 'timepoint : 1*MidSleepRestriction -1*EndSleepRestriction' \
-gltLabel 6 'EndSleep-AcuteRec' -gltCode 6 'timepoint : 1*EndSleepRestriction -1*AcuteRecovery' \
-gltLabel 7 'EndSleep-LongRec' -gltCode 7 'timepoint : 1*EndSleepRestriction -1*LongtermRecovery' \
-gltLabel 8 'AcuteRec-LongRec' -gltCode 8 'timepoint : 1*AcuteRecovery -1*LongtermRecovery' \
-dataTable @lh_datatable.txt

3dLME -prefix SamWR_rh.niml.dset -jobs 8 \
-model "0+timepoint" \
-ranEff '~1' \
-num_glt 8 \
-gltLabel 1 'Baseline-MidSleep' -gltCode 1 'timepoint : 1*Baseline -1*MidSleepRestriction' \
-gltLabel 2 'Baseline-EndSleep' -gltCode 2 'timepoint : 1*Baseline -1*EndSleepRestriction' \
-gltLabel 3 'Baseline-AcuteRec' -gltCode 3 'timepoint : 1*Baseline -1*AcuteRecovery' \
-gltLabel 4 'Baseline-LongRec' -gltCode 4 'timepoint : 1*Baseline -1*LongtermRecovery' \
-gltLabel 5 'MidSleep-EndSleep' -gltCode 5 'timepoint : 1*MidSleepRestriction -1*EndSleepRestriction' \
-gltLabel 6 'EndSleep-AcuteRec' -gltCode 6 'timepoint : 1*EndSleepRestriction -1*AcuteRecovery' \
-gltLabel 7 'EndSleep-LongRec' -gltCode 7 'timepoint : 1*EndSleepRestriction -1*LongtermRecovery' \
-gltLabel 8 'AcuteRec-LongRec' -gltCode 8 'timepoint : 1*AcuteRecovery -1*LongtermRecovery' \
-dataTable @rh_datatable.txt