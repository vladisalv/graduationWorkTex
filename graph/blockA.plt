set terminal png
set output 'pic/blockA.png'

set title "Зависимость времени работы блочного метода от размера блока"
set xlabel "размер блока"
set ylabel "время (сек)"

set xrange [100:15000]
set xtics 2000
set xtics add ("100" 100)
set yrange [0:100]
set key spacing 1.5 at 14000,90

plot 'data/blockA.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'red' title "GPU",\
     'data/blockA.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'blue' title "HOST"
