reset
# Output definition
set terminal pdfcairo enhanced font "Consolas, 12"
set lmargin 13
set rmargin 13
# Parameters
set key left top Left
set xlabel "Time (in s)"
set ylabel "Throughput"
set grid
set style fill solid 0.25
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
set title "LargeScenario / LargeScenario"
set y2label "Throughput ([bundles,orders]/min)"
set ylabel "Distance (m/min)"
set output "bundlesordersdistancecombined.pdf"
set y2tics
plot \
"bundleprogressionresults.dat" using 1:2 smooth bezier axes x1y2 with lines linestyle 1 t "Bundle throughput", \
"orderprogressionresults.dat" using 1:2 smooth bezier axes x1y2 with lines linestyle 2 t "Order throughput", \
"traveleddistanceprogression.dat" using 1:2 smooth bezier axes x1y1 with lines linestyle 3 t "Distance traveled"
reset
exit
