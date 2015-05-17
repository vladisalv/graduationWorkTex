set terminal png

set title "Сравнение времени работы блочного и матричного метода"
set xlabel "количество процессов"
set ylabel "время (сек)"

set xtics 1,32
set xtics ("1" 1, "2" 2, "4" 3, "8" 4, "16" 5, "32" 6)
#set ytics 100

set key spacing 1.5 right top

set output 'blockBH.png'
plot 'blockBH.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'blue' title "HOST-BLOCK",\
     'blockBH.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'yellow' title "HOST-MATRIX"

#set output 'blockBG.png'
#plot 'blockBG.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'red' title "GPU-BLOCK",\
     'blockBG.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'purple' title "GPU-MATRIX"
