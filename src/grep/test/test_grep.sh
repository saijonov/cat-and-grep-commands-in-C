run_test() {
  local flags="$1"
  local files="$2"
  echo "Running test with flags '$flags' on files '$files'"
  local output_file=$(mktemp)
  local expected_file=$(mktemp)
  .././s21_grep $flags $files > "$output_file"
  grep $flags $files > "$expected_file"
  if diff "$output_file" "$expected_file" > /dev/null; then
      echo "Test with flags '$flags' on files '$files' passed"
  else
      echo "Test with flags '$flags' on files '$files' failed"
  fi
  rm "$output_file" "$expected_file"
}

# Запуск тестов
run_test "-e 'a'" "../test/test2.txt"
run_test "-i 'a'" "../test/test4.txt"
run_test "-v 'a'" "../test/test2.txt"
run_test "-c 'a'" "../test/test4.txt"
run_test "-l 'a'" "../test/test2.txt"
run_test "-n 'a'" "../test/test4.txt"
run_test "-h 'a'" "../test/test4.txt"
run_test "-s 'a'" "../test/test2.txt"
run_test "-o 'a'" "../test/test4.txt"
run_test "-f ../test/test1.txt" "../test/*"

# Тесты с комбинациями флагов для другого файла
run_test "-o -e 'a'" "../test/test1.txt"
run_test "-i -v -e 'a'" "../test/test2.txt"
run_test "-i -c -e 'a'" "../test/test1.txt"
run_test "-i -l -e 'a'" "../test/test3.txt"
run_test "-n -c -e 'a'" "../test/test1.txt"
run_test "-s -l -e 'a'" "../test/test4.txt"
run_test "-o -n -e 'a'" "../test/test1.txt"
run_test "-e 'a' -f ../test/test2.txt" "../test/*.txt"

# Тесты с комбинациями флагов для другого файла
run_test "-i -v -e 'a'" "../test/test3.txt"
run_test "-i -c -e 'a'" "../test/test2.txt"
run_test "-i -l -e 'a'" "../test/test1.txt"
run_test "-n -c -e 'a'" "../test/test2.txt"
run_test "-s -l -e 'a'" "../test/test1.txt"
run_test "-o -n -e 'a'" "../test/test4.txt"
run_test "-e 'a' -f ../test/test3.txt" "../test/*.txt"
