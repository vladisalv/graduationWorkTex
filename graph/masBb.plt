set terminal png
set output '../image/masBb.png'

set title "Ускорение блочной программы. 20 млн. BlueGene"
set xlabel "количество процессов"
set ylabel "время (сек)"

#set xtics ("1" 1, "2" 2, "4" 3, "8" 4, "16" 5, "32" 6, "64" 7, "128" 8, "256" 9, "512" 10, "1024" 11)
set yrange [1:1024]
set xrange [1:1024]
set key spacing 1.5 center top

plot 'data/masBb.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'orange'   title "y=x",\
     'data/masBb.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'blue' title "HOST"
