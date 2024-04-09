reset
# Output definition
set terminal pdfcairo enhanced size 7, 69 font "Consolas, 12"
set lmargin 13
set rmargin 13
set output "overview.pdf"
# Line-Styles
set style line 1 linetype 1 linecolor rgb "#7090c8" linewidth 3
set style line 2 linetype 1 linecolor rgb "#41b449" linewidth 3
set style line 3 linetype 1 linecolor rgb "#f7cb38" linewidth 3
set style line 4 linetype 1 linecolor rgb "#db4937" linewidth 3
set style line 5 linetype 1 linecolor rgb "#474747" linewidth 3
set style line 6 linetype 1 linecolor rgb "#925ac7" linewidth 3
set style line 7 linetype 1 linecolor rgb "#57bde3" linewidth 3
set style line 8 linetype 1 linecolor rgb "#ff8a3c" linewidth 3
set style line 9 linetype 1 linecolor rgb "#1c1c1c" linewidth 3
set style line 10 linetype 1 linecolor rgb "#4f658c" linewidth 3
set style line 11 linetype 1 linecolor rgb "#29732e" linewidth 3
set style line 12 linetype 1 linecolor rgb "#737373" linewidth 3
set style line 13 linetype 1 linecolor rgb "#8cb4fa" linewidth 3
set style line 14 linetype 1 linecolor rgb "#5afa65" linewidth 3
set xrange [0:8]
set multiplot layout 23, 1 title "LargeScenario / LargeScenario / LargeScenario"
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Count (per hour)"
set y2label "Count (per hour)"
set y2tics
plot \
"CustomPlotDataBundlesPlacedHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Bundles placed (y1)", \
"CustomPlotDataBundlesHandledHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Bundles handled (y1)", \
"CustomPlotDataOrdersPlacedHour1200.dat" using 1:2 axes x1y2 with lines linestyle 3 t "Orders placed (y2)", \
"CustomPlotDataOrdersHandledHour1200.dat" using 1:2 axes x1y2 with lines linestyle 4 t "Orders handled (y2)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Time (avg, in seconds)"
set y2label "Time (avg, in seconds)"
set y2tics
plot \
"CustomPlotDataBundleThroughputTimeAvgHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Bundle throughput time (y1)", \
"CustomPlotDataBundleTurnoverTimeAvgHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Bundle turnover time (y1)", \
"CustomPlotDataOrderThroughputTimeAvgHour1200.dat" using 1:2 axes x1y2 with lines linestyle 3 t "Order throughput time (y2)", \
"CustomPlotDataOrderTurnoverTimeAvgHour1200.dat" using 1:2 axes x1y2 with lines linestyle 4 t "Order turnover time (y2)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Inventory fill (%)"
set y2label "Distance (meter)"
set y2tics
plot \
"CustomPlotDataInventoryLevelHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Inventory level (y1)", \
"CustomPlotDataDistanceTraveledHour1200.dat" using 1:2 axes x1y2 with lines linestyle 2 t "Distance traveled (y2)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Count (per hour)"
plot \
"CustomPlotDataBundlesHandledHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Bundles handled (y1)", \
"CustomPlotDataOrdersHandledHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Orders handled (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "pile-on value"
plot \
"CustomPlotDataBundlePileonHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Bundle pile-on (y1)", \
"CustomPlotDataItemPileonHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Item pile-on (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Pod count (per hour)"
plot \
"CustomPlotDataPodsHandledAtISHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Pods handled at input-stations (y1)", \
"CustomPlotDataPodsHandledAtOSHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Pods handled at output-stations (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Average count"
set y2label "Average count"
set y2tics
plot \
"CustomPlotDataBundlesBacklogLevelHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Bundles backlog level (y1)", \
"CustomPlotDataOrdersBacklogLevelHour1200.dat" using 1:2 axes x1y2 with lines linestyle 2 t "Orders backlog level (y2)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Time (avg, in seconds)"
set y2label "Fraction (%)"
set y2tics
plot \
"CustomPlotDataOrderLatenessAvgHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Order lateness (y1)", \
"CustomPlotDataLateOrderFractionalHour1200.dat" using 1:2 axes x1y2 with lines linestyle 2 t "Late orders (y2)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Average age (in seconds)"
set y2label "Average age (in seconds)"
set y2tics
plot \
"CustomPlotDataBundleThroughputAgeAverageHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Bundle age (throughput time) (y1)", \
"CustomPlotDataBundleTurnoverAgeAverageHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Bundle age (turnover time) (y1)", \
"CustomPlotDataOrderThroughputAgeAverageHour1200.dat" using 1:2 axes x1y2 with lines linestyle 3 t "Order age (throughput time) (y2)", \
"CustomPlotDataOrderTurnoverAgeAverageHour1200.dat" using 1:2 axes x1y2 with lines linestyle 4 t "Order age (turnover time) (y2)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set y2label "Count"
set y2tics
set ylabel "Average SKU frequency"
plot \
"CustomPlotDataSKUCountContainedHour1200.dat" using 1:2 axes x1y2 with lines linestyle 1 t "SKU count (y2)", \
"CustomPlotDataBundleFrequencyAverageHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Bundle frequency (avg.) (y1)", \
"CustomPlotDataOrderFrequencyAverageHour1200.dat" using 1:2 axes x1y1 with lines linestyle 3 t "Order frequency (avg.) (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Count"
set y2label "Avg. rank difference"
set y2tics
plot \
"CustomPlotDataInvCombinedTotalHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Inversion count (combined) (y1)", \
"CustomPlotDataInvSpeedTotalHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Inversion count (speed) (y1)", \
"CustomPlotDataInvUtilityTotalHour1200.dat" using 1:2 axes x1y1 with lines linestyle 3 t "Inversion count (utility) (y1)", \
"CustomPlotDataInvCombinedAvgRankHour1200.dat" using 1:2 axes x1y2 with lines linestyle 4 t "Avg. inversion rank diff. (combined) (y2)", \
"CustomPlotDataInvSpeedAvgRankHour1200.dat" using 1:2 axes x1y2 with lines linestyle 5 t "Avg. inversion rank diff. (speed) (y2)", \
"CustomPlotDataInvUtilityAvgRankHour1200.dat" using 1:2 axes x1y2 with lines linestyle 6 t "Avg. inversion rank diff. (utility) (y2)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Idle time (in %)"
plot \
"CustomPlotDataIStationIdleTimeHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Idle-time of input (y1)", \
"CustomPlotDataOStationIdleTimeHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Idle-time of outputstation0 (y1)", \
"CustomPlotDataOStationIdleTimeHour1200.dat" using 1:3 axes x1y1 with lines linestyle 3 t "Idle-time of outputstation1 (y1)", \
"CustomPlotDataOStationIdleTimeHour1200.dat" using 1:4 axes x1y1 with lines linestyle 4 t "Idle-time of outputstation2 (y1)", \
"CustomPlotDataOStationIdleTimeHour1200.dat" using 1:5 axes x1y1 with lines linestyle 5 t "Idle-time of outputstation3 (y1)", \
"CustomPlotDataOStationIdleTimeHour1200.dat" using 1:6 axes x1y1 with lines linestyle 6 t "Idle-time of outputstation4 (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Up-time (in %)"
plot \
"CustomPlotDataIStationActiveTimeHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Up-time of input (y1)", \
"CustomPlotDataOStationActiveTimeHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Up-time of outputstation0 (y1)", \
"CustomPlotDataOStationActiveTimeHour1200.dat" using 1:3 axes x1y1 with lines linestyle 3 t "Up-time of outputstation1 (y1)", \
"CustomPlotDataOStationActiveTimeHour1200.dat" using 1:4 axes x1y1 with lines linestyle 4 t "Up-time of outputstation2 (y1)", \
"CustomPlotDataOStationActiveTimeHour1200.dat" using 1:5 axes x1y1 with lines linestyle 5 t "Up-time of outputstation3 (y1)", \
"CustomPlotDataOStationActiveTimeHour1200.dat" using 1:6 axes x1y1 with lines linestyle 6 t "Up-time of outputstation4 (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Count"
plot \
"CustomPlotDataIStationOpenWorkHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Open bundles of input (y1)", \
"CustomPlotDataIStationRequestsHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Open requests of input (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Count"
plot \
"CustomPlotDataOStationOpenWorkHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Open items of outputstation0 (y1)", \
"CustomPlotDataOStationOpenWorkHour1200.dat" using 1:3 axes x1y1 with lines linestyle 2 t "Open items of outputstation1 (y1)", \
"CustomPlotDataOStationOpenWorkHour1200.dat" using 1:4 axes x1y1 with lines linestyle 3 t "Open items of outputstation2 (y1)", \
"CustomPlotDataOStationOpenWorkHour1200.dat" using 1:5 axes x1y1 with lines linestyle 4 t "Open items of outputstation3 (y1)", \
"CustomPlotDataOStationOpenWorkHour1200.dat" using 1:6 axes x1y1 with lines linestyle 5 t "Open items of outputstation4 (y1)", \
"CustomPlotDataOStationRequestsHour1200.dat" using 1:2 axes x1y1 with lines linestyle 6 t "Open requests of outputstation0 (y1)", \
"CustomPlotDataOStationRequestsHour1200.dat" using 1:3 axes x1y1 with lines linestyle 7 t "Open requests of outputstation1 (y1)", \
"CustomPlotDataOStationRequestsHour1200.dat" using 1:4 axes x1y1 with lines linestyle 8 t "Open requests of outputstation2 (y1)", \
"CustomPlotDataOStationRequestsHour1200.dat" using 1:5 axes x1y1 with lines linestyle 9 t "Open requests of outputstation3 (y1)", \
"CustomPlotDataOStationRequestsHour1200.dat" using 1:6 axes x1y1 with lines linestyle 10 t "Open requests of outputstation4 (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Count"
plot \
"CustomPlotDataIStationBotsHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Bots of input (y1)", \
"CustomPlotDataOStationBotsHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Bots of outputstation0 (y1)", \
"CustomPlotDataOStationBotsHour1200.dat" using 1:3 axes x1y1 with lines linestyle 3 t "Bots of outputstation1 (y1)", \
"CustomPlotDataOStationBotsHour1200.dat" using 1:4 axes x1y1 with lines linestyle 4 t "Bots of outputstation2 (y1)", \
"CustomPlotDataOStationBotsHour1200.dat" using 1:5 axes x1y1 with lines linestyle 5 t "Bots of outputstation3 (y1)", \
"CustomPlotDataOStationBotsHour1200.dat" using 1:6 axes x1y1 with lines linestyle 6 t "Bots of outputstation4 (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Count"
set y2label "Count"
set y2tics
plot \
"CustomPlotDataBotsQueueingHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Bots queueing (y1)", \
"CustomPlotDataTaskBotCountsHour1200.dat" using 1:2 axes x1y2 with lines linestyle 2 t "Bots per Extract (y2)", \
"CustomPlotDataTaskBotCountsHour1200.dat" using 1:3 axes x1y2 with lines linestyle 3 t "Bots per Insert (y2)", \
"CustomPlotDataTaskBotCountsHour1200.dat" using 1:4 axes x1y2 with lines linestyle 4 t "Bots per None (y2)", \
"CustomPlotDataTaskBotCountsHour1200.dat" using 1:5 axes x1y2 with lines linestyle 5 t "Bots per ParkPod (y2)", \
"CustomPlotDataTaskBotCountsHour1200.dat" using 1:6 axes x1y2 with lines linestyle 6 t "Bots per RepositionPod (y2)", \
"CustomPlotDataTaskBotCountsHour1200.dat" using 1:7 axes x1y2 with lines linestyle 7 t "Bots per Rest (y2)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Time (in seconds)"
plot \
"CustomPlotDataLastMileTripTimeOStationHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Output-station trip time (y1)", \
"CustomPlotDataLastMileTripTimeIStationHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Input-station trip time (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Bundles (per time-unit)"
set y2label "Items (per time-unit)"
set y2tics
plot \
"CustomPlotDataIStationBundlesStoredHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Bundles stored at input (y1)", \
"CustomPlotDataOStationItemsPickedHour1200.dat" using 1:2 axes x1y2 with lines linestyle 2 t "Items picked at outputstation0 (y2)", \
"CustomPlotDataOStationItemsPickedHour1200.dat" using 1:3 axes x1y2 with lines linestyle 3 t "Items picked at outputstation1 (y2)", \
"CustomPlotDataOStationItemsPickedHour1200.dat" using 1:4 axes x1y2 with lines linestyle 4 t "Items picked at outputstation2 (y2)", \
"CustomPlotDataOStationItemsPickedHour1200.dat" using 1:5 axes x1y2 with lines linestyle 5 t "Items picked at outputstation3 (y2)", \
"CustomPlotDataOStationItemsPickedHour1200.dat" using 1:6 axes x1y2 with lines linestyle 6 t "Items picked at outputstation4 (y2)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Bundle pile-on"
set y2label "Item pile-on"
set y2tics
plot \
"CustomPlotDataIStationBundlePileonHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Bundle pile-on of input (y1)", \
"CustomPlotDataOStationItemPileonHour1200.dat" using 1:2 axes x1y2 with lines linestyle 2 t "Item pile-on of outputstation0 (y2)", \
"CustomPlotDataOStationItemPileonHour1200.dat" using 1:3 axes x1y2 with lines linestyle 3 t "Item pile-on of outputstation1 (y2)", \
"CustomPlotDataOStationItemPileonHour1200.dat" using 1:4 axes x1y2 with lines linestyle 4 t "Item pile-on of outputstation2 (y2)", \
"CustomPlotDataOStationItemPileonHour1200.dat" using 1:5 axes x1y2 with lines linestyle 5 t "Item pile-on of outputstation3 (y2)", \
"CustomPlotDataOStationItemPileonHour1200.dat" using 1:6 axes x1y2 with lines linestyle 6 t "Item pile-on of outputstation4 (y2)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Count"
plot \
"CustomPlotDataIStationsActiveHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Active input stations (y1)", \
"CustomPlotDataOStationsActiveHour1200.dat" using 1:2 axes x1y1 with lines linestyle 2 t "Active output stations (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
unset xlabel
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Time consumed (seconds)"
plot \
"CustomPlotDataControllerRuntimesHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Time consumed by IS (y1)", \
"CustomPlotDataControllerRuntimesHour1200.dat" using 1:3 axes x1y1 with lines linestyle 2 t "Time consumed by OB (y1)", \
"CustomPlotDataControllerRuntimesHour1200.dat" using 1:4 axes x1y1 with lines linestyle 3 t "Time consumed by PP (y1)", \
"CustomPlotDataControllerRuntimesHour1200.dat" using 1:5 axes x1y1 with lines linestyle 4 t "Time consumed by PS (y1)", \
"CustomPlotDataControllerRuntimesHour1200.dat" using 1:6 axes x1y1 with lines linestyle 5 t "Time consumed by RB (y1)", \
"CustomPlotDataControllerRuntimesHour1200.dat" using 1:7 axes x1y1 with lines linestyle 6 t "Time consumed by RP (y1)", \
"CustomPlotDataControllerRuntimesHour1200.dat" using 1:8 axes x1y1 with lines linestyle 7 t "Time consumed by TA (y1)"
unset ylabel
unset y2label
# Parameters
set key left top Left
set xlabel "Time (in hours)"
set ylabel "Throughput"
set grid
set style fill solid 0.25
set ylabel "Time consumed (minutes)"
set y2label "Memory (megabyte)"
set y2tics
plot \
"CustomPlotDataRealTimeHour1200.dat" using 1:2 axes x1y1 with lines linestyle 1 t "Real time (y1)", \
"CustomPlotDataMemoryUsageHour1200.dat" using 1:2 axes x1y2 with lines linestyle 2 t "Memory used (y2)"
unset ylabel
unset y2label
unset multiplot
reset
exit
