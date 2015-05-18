set terminal png
set output 'gpuC1.png'		# установка вывода

set title "Время работы с использованием GPU и без использования GPU"
set ylabel "время (сек)"
set xlabel "количество процессов на устройство"

set grid ytics
set xtics 0,1,2
set xtics ("1" 0, "2" 1, "4" 2)
set style data histograms # Тип гистограммы
#set boxwidth 0.6 absolute # Ширина столбцов от максимума (когда они соприкасаются)
set style fill solid 1 # Заполнение

#set key outside # Вынести легенду за график
set key left top

#set xtic rotate by 45 scale 0 offset character -6,-2

plot 'gpuC1.data' u 1 lt rgb 'brown' title "Индексирование",\
     'gpuC1.data' u 2 lt rgb 'green' title "Сравнение",\
     'gpuC1.data' u 3 lt rgb 'red' title "Итог"
