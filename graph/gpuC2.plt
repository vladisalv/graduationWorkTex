set terminal png
set output '../image/gpuC2.png'

set title "Блочная GPU-программа"
set xlabel "количество процессов"
set ylabel "время (сек)"

set xtics 1,32
set xtics ("1" 1, "2" 2, "4" 3, "8" 4, "16" 5, "32" 6)
#set ytics 100

set key spacing 1.5 right top

plot 'data/gpuC2.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'red'   title "GPU 1x1",\
     'data/gpuC2.data' u 1:4 w linespoints lw 2 pt 7 lt rgb 'brown' title "GPU 4x1",\
     #'data/gpuC2.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'blue'  title "HOST"
