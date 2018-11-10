[![Build Status](https://travis-ci.com/LKS007/fbx_nmax.svg?branch=master)](https://travis-ci.com/LKS007/fbx_nmax)

# Nmax

Реализован гем NMAX. Он выполняет следующие задачи:

1) Читает из входящего потока текстовые данные;
2) По завершении ввода выводит n самых больших целых чисел, встретившихся в полученных текстовых данных. 

Дополнительные указания:
1) Числом считается любая непрерывная последовательность цифр в тексте;
2) Известно, что чисел длиннее 1000 цифр во входных данных нет;
3) Число n должно быть единственным параметром скрипта;
4) Код должен быть покрыт тестами;
5) Код должен быть оформлен в виде гема (содержащего исполняемый файл, код модулей и т.д.);
6) Плюсом является размещение на Github и интеграция с Travis CI.

Пример запуска:
cat sample_data_40GB.txt | nmax 10000 

Установка гема:
Откройте теримнал и перейдите в директорию данного репозитория. Введите следующие команды
1) gem build nmax.gemspec
2) gem install nmax-0.1.0.gem
