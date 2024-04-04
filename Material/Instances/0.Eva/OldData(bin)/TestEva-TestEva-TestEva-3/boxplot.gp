reset
# Output definition
set terminal pdfcairo enhanced size 7, 3 font "Consolas, 12"
set output "boxplot.pdf"
set lmargin 13
set rmargin 13
# Parameters
set grid
unset key
set pointsize 0.5
set style data boxplot
set title "PP / ItemThroughputRateScore"
set xlabel "PP-values"
set ylabel "ItemThroughputRateScore"
plot "boxplot.dat" using (1.0):9:(0):1 lc "#000000" lw 1.2
set title "TA / ItemThroughputRateScore"
set xlabel "TA-values"
set ylabel "ItemThroughputRateScore"
plot "boxplot.dat" using (1.0):9:(0):2 lc "#000000" lw 1.2
set title "IS / ItemThroughputRateScore"
set xlabel "IS-values"
set ylabel "ItemThroughputRateScore"
plot "boxplot.dat" using (1.0):9:(0):3 lc "#000000" lw 1.2
set title "PS / ItemThroughputRateScore"
set xlabel "PS-values"
set ylabel "ItemThroughputRateScore"
plot "boxplot.dat" using (1.0):9:(0):4 lc "#000000" lw 1.2
set title "RB / ItemThroughputRateScore"
set xlabel "RB-values"
set ylabel "ItemThroughputRateScore"
plot "boxplot.dat" using (1.0):9:(0):5 lc "#000000" lw 1.2
set title "OB / ItemThroughputRateScore"
set xlabel "OB-values"
set ylabel "ItemThroughputRateScore"
plot "boxplot.dat" using (1.0):9:(0):6 lc "#000000" lw 1.2
set title "BotsPerOStation / ItemThroughputRateScore"
set xlabel "BotsPerOStation-values"
set ylabel "ItemThroughputRateScore"
plot "boxplot.dat" using (1.0):9:(0):7 lc "#000000" lw 1.2
set title "NOStations / ItemThroughputRateScore"
set xlabel "NOStations-values"
set ylabel "ItemThroughputRateScore"
plot "boxplot.dat" using (1.0):9:(0):8 lc "#000000" lw 1.2
set title "PP / ItemPileOneAvg"
set xlabel "PP-values"
set ylabel "ItemPileOneAvg"
plot "boxplot.dat" using (1.0):10:(0):1 lc "#000000" lw 1.2
set title "TA / ItemPileOneAvg"
set xlabel "TA-values"
set ylabel "ItemPileOneAvg"
plot "boxplot.dat" using (1.0):10:(0):2 lc "#000000" lw 1.2
set title "IS / ItemPileOneAvg"
set xlabel "IS-values"
set ylabel "ItemPileOneAvg"
plot "boxplot.dat" using (1.0):10:(0):3 lc "#000000" lw 1.2
set title "PS / ItemPileOneAvg"
set xlabel "PS-values"
set ylabel "ItemPileOneAvg"
plot "boxplot.dat" using (1.0):10:(0):4 lc "#000000" lw 1.2
set title "RB / ItemPileOneAvg"
set xlabel "RB-values"
set ylabel "ItemPileOneAvg"
plot "boxplot.dat" using (1.0):10:(0):5 lc "#000000" lw 1.2
set title "OB / ItemPileOneAvg"
set xlabel "OB-values"
set ylabel "ItemPileOneAvg"
plot "boxplot.dat" using (1.0):10:(0):6 lc "#000000" lw 1.2
set title "BotsPerOStation / ItemPileOneAvg"
set xlabel "BotsPerOStation-values"
set ylabel "ItemPileOneAvg"
plot "boxplot.dat" using (1.0):10:(0):7 lc "#000000" lw 1.2
set title "NOStations / ItemPileOneAvg"
set xlabel "NOStations-values"
set ylabel "ItemPileOneAvg"
plot "boxplot.dat" using (1.0):10:(0):8 lc "#000000" lw 1.2
set title "PP / OrderLatenessAvg"
set xlabel "PP-values"
set ylabel "OrderLatenessAvg"
plot "boxplot.dat" using (1.0):11:(0):1 lc "#000000" lw 1.2
set title "TA / OrderLatenessAvg"
set xlabel "TA-values"
set ylabel "OrderLatenessAvg"
plot "boxplot.dat" using (1.0):11:(0):2 lc "#000000" lw 1.2
set title "IS / OrderLatenessAvg"
set xlabel "IS-values"
set ylabel "OrderLatenessAvg"
plot "boxplot.dat" using (1.0):11:(0):3 lc "#000000" lw 1.2
set title "PS / OrderLatenessAvg"
set xlabel "PS-values"
set ylabel "OrderLatenessAvg"
plot "boxplot.dat" using (1.0):11:(0):4 lc "#000000" lw 1.2
set title "RB / OrderLatenessAvg"
set xlabel "RB-values"
set ylabel "OrderLatenessAvg"
plot "boxplot.dat" using (1.0):11:(0):5 lc "#000000" lw 1.2
set title "OB / OrderLatenessAvg"
set xlabel "OB-values"
set ylabel "OrderLatenessAvg"
plot "boxplot.dat" using (1.0):11:(0):6 lc "#000000" lw 1.2
set title "BotsPerOStation / OrderLatenessAvg"
set xlabel "BotsPerOStation-values"
set ylabel "OrderLatenessAvg"
plot "boxplot.dat" using (1.0):11:(0):7 lc "#000000" lw 1.2
set title "NOStations / OrderLatenessAvg"
set xlabel "NOStations-values"
set ylabel "OrderLatenessAvg"
plot "boxplot.dat" using (1.0):11:(0):8 lc "#000000" lw 1.2
set title "PP / LateOrdersFractional"
set xlabel "PP-values"
set ylabel "LateOrdersFractional"
plot "boxplot.dat" using (1.0):12:(0):1 lc "#000000" lw 1.2
set title "TA / LateOrdersFractional"
set xlabel "TA-values"
set ylabel "LateOrdersFractional"
plot "boxplot.dat" using (1.0):12:(0):2 lc "#000000" lw 1.2
set title "IS / LateOrdersFractional"
set xlabel "IS-values"
set ylabel "LateOrdersFractional"
plot "boxplot.dat" using (1.0):12:(0):3 lc "#000000" lw 1.2
set title "PS / LateOrdersFractional"
set xlabel "PS-values"
set ylabel "LateOrdersFractional"
plot "boxplot.dat" using (1.0):12:(0):4 lc "#000000" lw 1.2
set title "RB / LateOrdersFractional"
set xlabel "RB-values"
set ylabel "LateOrdersFractional"
plot "boxplot.dat" using (1.0):12:(0):5 lc "#000000" lw 1.2
set title "OB / LateOrdersFractional"
set xlabel "OB-values"
set ylabel "LateOrdersFractional"
plot "boxplot.dat" using (1.0):12:(0):6 lc "#000000" lw 1.2
set title "BotsPerOStation / LateOrdersFractional"
set xlabel "BotsPerOStation-values"
set ylabel "LateOrdersFractional"
plot "boxplot.dat" using (1.0):12:(0):7 lc "#000000" lw 1.2
set title "NOStations / LateOrdersFractional"
set xlabel "NOStations-values"
set ylabel "LateOrdersFractional"
plot "boxplot.dat" using (1.0):12:(0):8 lc "#000000" lw 1.2
set title "PP / DistanceTraveledPerBot"
set xlabel "PP-values"
set ylabel "DistanceTraveledPerBot"
plot "boxplot.dat" using (1.0):13:(0):1 lc "#000000" lw 1.2
set title "TA / DistanceTraveledPerBot"
set xlabel "TA-values"
set ylabel "DistanceTraveledPerBot"
plot "boxplot.dat" using (1.0):13:(0):2 lc "#000000" lw 1.2
set title "IS / DistanceTraveledPerBot"
set xlabel "IS-values"
set ylabel "DistanceTraveledPerBot"
plot "boxplot.dat" using (1.0):13:(0):3 lc "#000000" lw 1.2
set title "PS / DistanceTraveledPerBot"
set xlabel "PS-values"
set ylabel "DistanceTraveledPerBot"
plot "boxplot.dat" using (1.0):13:(0):4 lc "#000000" lw 1.2
set title "RB / DistanceTraveledPerBot"
set xlabel "RB-values"
set ylabel "DistanceTraveledPerBot"
plot "boxplot.dat" using (1.0):13:(0):5 lc "#000000" lw 1.2
set title "OB / DistanceTraveledPerBot"
set xlabel "OB-values"
set ylabel "DistanceTraveledPerBot"
plot "boxplot.dat" using (1.0):13:(0):6 lc "#000000" lw 1.2
set title "BotsPerOStation / DistanceTraveledPerBot"
set xlabel "BotsPerOStation-values"
set ylabel "DistanceTraveledPerBot"
plot "boxplot.dat" using (1.0):13:(0):7 lc "#000000" lw 1.2
set title "NOStations / DistanceTraveledPerBot"
set xlabel "NOStations-values"
set ylabel "DistanceTraveledPerBot"
plot "boxplot.dat" using (1.0):13:(0):8 lc "#000000" lw 1.2
set title "PP / OSIdleTimeAvg"
set xlabel "PP-values"
set ylabel "OSIdleTimeAvg"
plot "boxplot.dat" using (1.0):14:(0):1 lc "#000000" lw 1.2
set title "TA / OSIdleTimeAvg"
set xlabel "TA-values"
set ylabel "OSIdleTimeAvg"
plot "boxplot.dat" using (1.0):14:(0):2 lc "#000000" lw 1.2
set title "IS / OSIdleTimeAvg"
set xlabel "IS-values"
set ylabel "OSIdleTimeAvg"
plot "boxplot.dat" using (1.0):14:(0):3 lc "#000000" lw 1.2
set title "PS / OSIdleTimeAvg"
set xlabel "PS-values"
set ylabel "OSIdleTimeAvg"
plot "boxplot.dat" using (1.0):14:(0):4 lc "#000000" lw 1.2
set title "RB / OSIdleTimeAvg"
set xlabel "RB-values"
set ylabel "OSIdleTimeAvg"
plot "boxplot.dat" using (1.0):14:(0):5 lc "#000000" lw 1.2
set title "OB / OSIdleTimeAvg"
set xlabel "OB-values"
set ylabel "OSIdleTimeAvg"
plot "boxplot.dat" using (1.0):14:(0):6 lc "#000000" lw 1.2
set title "BotsPerOStation / OSIdleTimeAvg"
set xlabel "BotsPerOStation-values"
set ylabel "OSIdleTimeAvg"
plot "boxplot.dat" using (1.0):14:(0):7 lc "#000000" lw 1.2
set title "NOStations / OSIdleTimeAvg"
set xlabel "NOStations-values"
set ylabel "OSIdleTimeAvg"
plot "boxplot.dat" using (1.0):14:(0):8 lc "#000000" lw 1.2
reset
exit
