reset
# Output definition
set terminal pdfcairo enhanced size 7, 3 font "Consolas, 12"
set output "heatedscatterplots_distr.pdf"
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
set title "ItemPileOneAvg"
set xlabel "Zb_Over_Za"
set ylabel "Zc_Over_Za"
plot \
"heatedscatterplots_distr.dat" u 1:2:3 w points linestyle 1 palette t "Overall"
set title "DistanceTraveledPerBot"
set xlabel "Zb_Over_Za"
set ylabel "Zc_Over_Za"
plot \
"heatedscatterplots_distr.dat" u 1:2:4 w points linestyle 1 palette t "Overall"
set title "DistanceTraveled"
set xlabel "Zb_Over_Za"
set ylabel "Zc_Over_Za"
plot \
"heatedscatterplots_distr.dat" u 1:2:5 w points linestyle 1 palette t "Overall"
set title "TripCount"
set xlabel "Zb_Over_Za"
set ylabel "Zc_Over_Za"
plot \
"heatedscatterplots_distr.dat" u 1:2:6 w points linestyle 1 palette t "Overall"
set title "OrderThroughputTimeAvg"
set xlabel "Zb_Over_Za"
set ylabel "Zc_Over_Za"
plot \
"heatedscatterplots_distr.dat" u 1:2:7 w points linestyle 1 palette t "Overall"
set title "OrderTurnoverTimeAvg"
set xlabel "Zb_Over_Za"
set ylabel "Zc_Over_Za"
plot \
"heatedscatterplots_distr.dat" u 1:2:8 w points linestyle 1 palette t "Overall"
set title "OrderPileOneAvg"
set xlabel "Zb_Over_Za"
set ylabel "Zc_Over_Za"
plot \
"heatedscatterplots_distr.dat" u 1:2:9 w points linestyle 1 palette t "Overall"
set title "OrdersHandled"
set xlabel "Zb_Over_Za"
set ylabel "Zc_Over_Za"
plot \
"heatedscatterplots_distr.dat" u 1:2:10 w points linestyle 1 palette t "Overall"
reset
exit
