set terminal png
set output 'blockA.png'

set title "Зависимость времени работы блочного метода от размера блока"
set xlabel "размер блока"
set ylabel "время (сек)"

set xrange [100:15000]
set xtics 2000
set xtics add ("100" 100)
#set xtics ("1" 1, "2" 2, "4" 3, "8" 4, "16" 5, "32" 6)
set yrange [0:100]
set key spacing 1.5 at 14000,90

plot 'blockA.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'red' title "GPU",\
     'blockA.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'blue' title "HOST"
