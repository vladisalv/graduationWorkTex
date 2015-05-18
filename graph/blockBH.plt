set terminal png
set output 'pic/blockBH.png'

set title "Сравнение времени работы блочного и матричного метода"
set xlabel "количество процессов"
set ylabel "время (сек)"

set xtics 1,32
set xtics ("1" 1, "2" 2, "4" 3, "8" 4, "16" 5, "32" 6)
#set ytics 100

set key spacing 1.5 right top

plot 'data/blockBH.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'yellow' title "HOST-MATRIX",\
     'data/blockBH.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'blue' title "HOST-BLOCK"

