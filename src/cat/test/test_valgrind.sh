#!/bin/bash

valgrind --leak-check=full --show-leak-kinds=all ./test_cat.sh

# Проверка кода возврата valgrind
if [ $? -ne 0 ]; then
    echo "Обнаружены утечки памяти. Проверьте вывод valgrind для подробностей."
else
    echo "Утечек памяти не обнаружено."
fi