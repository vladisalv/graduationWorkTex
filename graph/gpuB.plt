set terminal png
set output 'gpuB.png'

set title "Масштабируемость ускорения GPU алгоритма"
set xlabel "количество процессов"
set ylabel "ускорение"

set xtics ("1" 1, "2" 2, "4" 3, "8" 4, "16" 5, "32" 6)
set yrange [0:4]
set key spacing 1.5 right top

plot 'gpuB.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'orange' title "timeGPU / timeHOST"
