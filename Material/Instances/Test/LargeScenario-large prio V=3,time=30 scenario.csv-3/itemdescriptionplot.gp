reset
# Output definition
set terminal pdfcairo enhanced size 7, 3 font "Consolas, 12"
set lmargin 13
set rmargin 13
# Parameters
set key right top Right
set grid
# Line-Styles
set style line 1 linetype 1 linecolor rgb "#474747" linewidth 3
set style line 2 linetype 1 linecolor rgb "#41b449" linewidth 3
set style line 3 linetype 1 linecolor rgb "#db4937" linewidth 3
set output "itemdescriptionplot.pdf"
set title "LargeScenario / LargeScenario"
set xlabel "SKUs"
set ylabel "Frequency"
set y2label "# items ordered"
set y2tics
set yrange [0:1]
set y2range [0:49]
plot \
"itemdescriptionplot.dat" u 1:2 w lines linestyle 1 t "Static frequencies", \
"itemdescriptionplot.dat" u 1:3 w lines linestyle 2 t "Measured frequencies", \
"itemdescriptionplot.dat" u 1:4 w lines axes x1y2 linestyle 3 t "Order count"
reset
exit
