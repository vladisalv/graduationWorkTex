set terminal png
set output '../image/gpuC1b.png'		# установка вывода

set title  "MATRIX-программа"
set ylabel "время (сек)"
set xlabel "этапы алгоритма"

set grid ytics
set xtics 0,1,2
set xtics ("Индексирование" 0, "Сравнение" 1, "Итог" 2)
set style data histograms # Тип гистограммы
#set boxwidth 0.6 absolute # Ширина столбцов от максимума (когда они соприкасаются)
set style fill solid 1 # Заполнение

#set key outside # Вынести легенду за график
set key left top

#set xtic rotate by 45 scale 0 offset character -6,-2

plot 'data/gpuC1b.data' u 1 lt rgb 'brown' title "1 mpi x 1 GPU",\
     'data/gpuC1b.data' u 2 lt rgb 'green' title "2 mpi x 1 GPU",\
     'data/gpuC1b.data' u 3 lt rgb 'red'   title "4 mpi x 1 GPU"
