reset
# Output definition
set terminal pdfcairo enhanced size 7, 3 font "Consolas, 12"
set output "Tags.pdf"
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
set title ""
set xlabel "OrderThroughputTimeAvg"
set ylabel "ItemPileOneAvg"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 1:15 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 1:15 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 1:15 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 1:15 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 1:15 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 1:15 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 1:15 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 1:15 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "ItemThroughputRate"
set ylabel "ItemPileOneAvg"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 2:15 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 2:15 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 2:15 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 2:15 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 2:15 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 2:15 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 2:15 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 2:15 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "ItemThroughputRateScore"
set ylabel "ItemPileOneAvg"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 3:15 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 3:15 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 3:15 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 3:15 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 3:15 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 3:15 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 3:15 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 3:15 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "OrderThroughputTimeAvg"
set ylabel "OrderThroughputRate"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 1:16 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 1:16 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 1:16 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 1:16 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 1:16 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 1:16 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 1:16 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 1:16 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "OrderTurnoverTimeAvg"
set ylabel "OrderThroughputRate"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 4:16 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 4:16 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 4:16 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 4:16 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 4:16 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 4:16 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 4:16 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 4:16 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "OrdersHandled"
set ylabel "BundlesHandled"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 5:17 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 5:17 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 5:17 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 5:17 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 5:17 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 5:17 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 5:17 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 5:17 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "TripDistance"
set ylabel "ItemPileOneAvg"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 6:15 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 6:15 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 6:15 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 6:15 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 6:15 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 6:15 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 6:15 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 6:15 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "LateOrdersFractional"
set ylabel "ItemThroughputRateScore"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 7:3 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 7:3 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 7:3 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 7:3 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 7:3 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 7:3 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 7:3 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 7:3 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "OrderLatenessAvg"
set ylabel "ItemThroughputRateScore"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 8:3 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 8:3 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 8:3 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 8:3 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 8:3 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 8:3 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 8:3 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 8:3 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "LateOrdersFractional"
set ylabel "OrderLatenessAvg"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 7:8 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 7:8 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 7:8 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 7:8 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 7:8 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 7:8 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 7:8 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 7:8 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "ItemThroughputRateScore"
set ylabel "OrderOffsetAvg"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 3:18 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 3:18 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 3:18 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 3:18 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 3:18 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 3:18 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 3:18 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 3:18 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "ISIdleTimeAvg"
set ylabel "OSIdleTimeAvg"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 9:19 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 9:19 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 9:19 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 9:19 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 9:19 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 9:19 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 9:19 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 9:19 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "TimingDecisionsOverall"
set ylabel "ItemThroughputRate"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 10:2 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 10:2 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 10:2 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 10:2 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 10:2 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 10:2 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 10:2 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 10:2 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "InvCombinedAvgRank"
set ylabel "ItemThroughputRateScore"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 11:3 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 11:3 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 11:3 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 11:3 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 11:3 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 11:3 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 11:3 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 11:3 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "TripDistance"
set ylabel "TripTime"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 6:20 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 6:20 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 6:20 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 6:20 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 6:20 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 6:20 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 6:20 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 6:20 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "TripDistance"
set ylabel "TripTimeWithoutQueueing"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 6:21 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 6:21 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 6:21 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 6:21 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 6:21 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 6:21 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 6:21 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 6:21 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "TimeMoving"
set ylabel "TimeQueueing"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 12:13 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 12:13 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 12:13 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 12:13 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 12:13 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 12:13 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 12:13 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 12:13 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "TimeQueueing"
set ylabel "ItemThroughputRateScore"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 13:3 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 13:3 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 13:3 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 13:3 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 13:3 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 13:3 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 13:3 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 13:3 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
set title ""
set xlabel "DistanceTraveledPerBot"
set ylabel "ItemThroughputRateScore"
plot \
"TagsTag1, 0.1, 0.068, 0.136, 1.0, 1.0.dat" u 14:3 w points linestyle 2 t "1, 0.1, 0.068, 0.136, 1.0, 1.0", \
"TagsTag1, 0.38, 0.068, 0.182, 0.5, 1.0.dat" u 14:3 w points linestyle 3 t "1, 0.38, 0.068, 0.182, 0.5, 1.0", \
"TagsTag1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0.dat" u 14:3 w points linestyle 4 t "1, 0.2866666666666667, 0.068, 0.173, 0.6, 1.0", \
"TagsTag1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0.dat" u 14:3 w points linestyle 5 t "1, 0.14666666666666667, 0.068, 0.14, 0.962, 1.0", \
"TagsTag1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0.dat" u 14:3 w points linestyle 6 t "1, 0.19333333333333336, 0.068, 0.155, 0.8, 1.0", \
"TagsTag1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0.dat" u 14:3 w points linestyle 7 t "1, 0.24000000000000002, 0.068, 0.165, 0.688, 1.0", \
"TagsTag1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0.dat" u 14:3 w points linestyle 8 t "1, 0.33333333333333337, 0.068, 0.178, 0.538, 1.0", \
"TagsTag1, 1, 1, 0.182, 0.5, 1.0.dat" u 14:3 w points linestyle 9 t "1, 1, 1, 0.182, 0.5, 1.0"
reset
exit
