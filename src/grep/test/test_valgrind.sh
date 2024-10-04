#!/bin/bash

valgrind --tool=memcheck --leak-check=yes --error-exitcode=1 ./test_grep.sh

# Проверка кода возврата valgrind
if [ $? -ne 0 ]; then
    echo "Обнаружены утечки памяти. Проверьте вывод valgrind для подробностей."
else
    echo "Утечек памяти не обнаружено."
fi
