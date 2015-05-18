set terminal png
set output 'gpuA.png'		# установка вывода

set title "Время работы с использованием GPU и без использования GPU"
set ylabel "время (сек)"
set xlabel "этапы вычислений"

set grid ytics
set xtics 0,1,2
set xtics ("Индексирование" 0, "Сравнение" 2, "Итог" 4)
set style data histograms # Тип гистограммы
#set boxwidth 0.6 absolute # Ширина столбцов от максимума (когда они соприкасаются)
set style fill solid 1 # Заполнение

set key outside # Вынести легенду за график

#set xtic rotate by 45 scale 0 offset character -6,-2

plot 'gpuA.data' u 2 lt rgb 'red' title "GPU",\
     'gpuA.data' u 1 lt rgb 'blue' title "HOST"
