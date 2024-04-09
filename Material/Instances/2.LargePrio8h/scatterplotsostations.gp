reset
# Output definition
set terminal pdfcairo enhanced size 7, 3 font "Consolas, 12"
set output "scatterplotsostations.pdf"
set lmargin 13
set rmargin 13
# Parameters
set key right top Right
set grid
set style fill solid 0.75
# Line-Styles
set style line 1 linetype 1 linecolor rgb "#7090c8" linewidth 1 pt 1
set style line 2 linetype 1 linecolor rgb "#41b449" linewidth 1 pt 2
set style line 3 linetype 1 linecolor rgb "#f7cb38" linewidth 1 pt 3
set style line 4 linetype 1 linecolor rgb "#db4937" linewidth 1 pt 4
set style line 5 linetype 1 linecolor rgb "#474747" linewidth 1 pt 5
set style line 6 linetype 1 linecolor rgb "#925ac7" linewidth 1 pt 6
set style line 7 linetype 1 linecolor rgb "#57bde3" linewidth 1 pt 7
set style line 8 linetype 1 linecolor rgb "#ff8a3c" linewidth 1 pt 8
set style line 9 linetype 1 linecolor rgb "#1c1c1c" linewidth 1 pt 9
set style line 10 linetype 1 linecolor rgb "#4f658c" linewidth 1 pt 10
set style line 11 linetype 1 linecolor rgb "#29732e" linewidth 1 pt 11
set style line 12 linetype 1 linecolor rgb "#737373" linewidth 1 pt 12
set style line 13 linetype 1 linecolor rgb "#8cb4fa" linewidth 1 pt 13
set style line 14 linetype 1 linecolor rgb "#5afa65" linewidth 1 pt 14
set title "OrderThroughputTimeAvg / ItemPileOneAvg"
set xlabel "OrderThroughputTimeAvg"
set ylabel "ItemPileOneAvg"
plot \
"scatterplotsostationsNOStations5.dat" u 1:15 w points linestyle 2 t "5"
set title "ItemThroughputRate / ItemPileOneAvg"
set xlabel "ItemThroughputRate"
set ylabel "ItemPileOneAvg"
plot \
"scatterplotsostationsNOStations5.dat" u 2:15 w points linestyle 2 t "5"
set title "ItemThroughputRateScore / ItemPileOneAvg"
set xlabel "ItemThroughputRateScore"
set ylabel "ItemPileOneAvg"
plot \
"scatterplotsostationsNOStations5.dat" u 3:15 w points linestyle 2 t "5"
set title "OrderThroughputTimeAvg / OrderThroughputRate"
set xlabel "OrderThroughputTimeAvg"
set ylabel "OrderThroughputRate"
plot \
"scatterplotsostationsNOStations5.dat" u 1:16 w points linestyle 2 t "5"
set title "OrderTurnoverTimeAvg / OrderThroughputRate"
set xlabel "OrderTurnoverTimeAvg"
set ylabel "OrderThroughputRate"
plot \
"scatterplotsostationsNOStations5.dat" u 4:16 w points linestyle 2 t "5"
set title "OrdersHandled / BundlesHandled"
set xlabel "OrdersHandled"
set ylabel "BundlesHandled"
plot \
"scatterplotsostationsNOStations5.dat" u 5:17 w points linestyle 2 t "5"
set title "TripDistance / ItemPileOneAvg"
set xlabel "TripDistance"
set ylabel "ItemPileOneAvg"
plot \
"scatterplotsostationsNOStations5.dat" u 6:15 w points linestyle 2 t "5"
set title "LateOrdersFractional / ItemThroughputRateScore"
set xlabel "LateOrdersFractional"
set ylabel "ItemThroughputRateScore"
plot \
"scatterplotsostationsNOStations5.dat" u 7:3 w points linestyle 2 t "5"
set title "OrderLatenessAvg / ItemThroughputRateScore"
set xlabel "OrderLatenessAvg"
set ylabel "ItemThroughputRateScore"
plot \
"scatterplotsostationsNOStations5.dat" u 8:3 w points linestyle 2 t "5"
set title "LateOrdersFractional / OrderLatenessAvg"
set xlabel "LateOrdersFractional"
set ylabel "OrderLatenessAvg"
plot \
"scatterplotsostationsNOStations5.dat" u 7:8 w points linestyle 2 t "5"
set title "ItemThroughputRateScore / OrderOffsetAvg"
set xlabel "ItemThroughputRateScore"
set ylabel "OrderOffsetAvg"
plot \
"scatterplotsostationsNOStations5.dat" u 3:18 w points linestyle 2 t "5"
set title "ISIdleTimeAvg / OSIdleTimeAvg"
set xlabel "ISIdleTimeAvg"
set ylabel "OSIdleTimeAvg"
plot \
"scatterplotsostationsNOStations5.dat" u 9:19 w points linestyle 2 t "5"
set title "TimingDecisionsOverall / ItemThroughputRate"
set xlabel "TimingDecisionsOverall"
set ylabel "ItemThroughputRate"
plot \
"scatterplotsostationsNOStations5.dat" u 10:2 w points linestyle 2 t "5"
set title "InvCombinedAvgRank / ItemThroughputRateScore"
set xlabel "InvCombinedAvgRank"
set ylabel "ItemThroughputRateScore"
plot \
"scatterplotsostationsNOStations5.dat" u 11:3 w points linestyle 2 t "5"
set title "TripDistance / TripTime"
set xlabel "TripDistance"
set ylabel "TripTime"
plot \
"scatterplotsostationsNOStations5.dat" u 6:20 w points linestyle 2 t "5"
set title "TripDistance / TripTimeWithoutQueueing"
set xlabel "TripDistance"
set ylabel "TripTimeWithoutQueueing"
plot \
"scatterplotsostationsNOStations5.dat" u 6:21 w points linestyle 2 t "5"
set title "TimeMoving / TimeQueueing"
set xlabel "TimeMoving"
set ylabel "TimeQueueing"
plot \
"scatterplotsostationsNOStations5.dat" u 12:13 w points linestyle 2 t "5"
set title "TimeQueueing / ItemThroughputRateScore"
set xlabel "TimeQueueing"
set ylabel "ItemThroughputRateScore"
plot \
"scatterplotsostationsNOStations5.dat" u 13:3 w points linestyle 2 t "5"
set title "DistanceTraveledPerBot / ItemThroughputRateScore"
set xlabel "DistanceTraveledPerBot"
set ylabel "ItemThroughputRateScore"
plot \
"scatterplotsostationsNOStations5.dat" u 14:3 w points linestyle 2 t "5"
reset
exit
