set terminal png
set output '../image/masAb.png'

set title "Ускорение блочной программы. 20 млн. Lomonosov"
set xlabel "количество процессов"
set ylabel "время (сек)"

#set xtics ("1" 1, "2" 2, "4" 3, "8" 4, "16" 5, "32" 6, "64" 7)
set yrange [1:64]
set xrange [1:64]
set key spacing 1.5 center top

plot 'data/masAb.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'orange' title "y=x",\
     'data/masAb.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'blue'   title "HOST",\
     'data/masAb.data' u 1:4 w linespoints lw 2 pt 7 lt rgb 'red'   title "GPU"
