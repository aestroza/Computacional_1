#! /usr/bin/gnuplot
set terminal postscript eps enhanced color font "Helvetica,10"
set output "grafico.eps"

set grid
set xlabel "eje x"
set ylabel "eje y"

plot "datos.dat" u 1:2 w l t "Curva 1",\
     "datos.dat" u 1:3 w l t "Curva 2",\
     "datos.dat" u 1:4 w l t "Curva 3",\
     "datos.dat" u 1:5 w l t "Curva 4",

plot "datos.dat" u 2:3 w l t "Curva 5"


set dgrid3d 50,50
set hidden3d 
splot "datos.dat" u 1:2:3 w l 

# w l with lines   w p with points
# u using
# t title

plot for[i=2:5] "datos.dat" u 1:i w l t "Curva ".(i-1)
