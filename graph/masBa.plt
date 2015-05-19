set terminal png
set output '../image/masBa.png'

set title "Время выполнения блочной программы. 20 млн. BlueGene"
set xlabel "количество процессов"
set ylabel "время (сек)"

set xtics ("1" 1, "2" 2, "4" 3, "8" 4, "16" 5, "32" 6, "64" 7, "128" 8, "256" 9, "512" 10, "1024" 11)
set yrange [0:22070]
set key spacing 1.5 right top

plot 'data/masBa.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'blue' title "HOST"
