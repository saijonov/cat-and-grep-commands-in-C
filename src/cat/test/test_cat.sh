run_test() {
  local flags="$1"
  local files="$2"
  echo "Running test with flags '$flags' on files '$files'"
  local output_file=$(mktemp)
  local expected_file=$(mktemp)
  .././s21_cat $flags $files > "$output_file"
  cat $flags $files > "$expected_file"
  if diff "$output_file" "$expected_file" > /dev/null; then
      echo "Test with flags '$flags' on files '$files' passed"
  else
      echo "Test with flags '$flags' on files '$files' failed"
  fi
  rm "$output_file" "$expected_file"
}

run_test "" "../test/test1.txt"
run_test "-b" "../test/test1.txt"
run_test "-n" "../test/test1.txt"
run_test "-s" "../test/test2.txt"
run_test "-e" "../test/*.txt"
run_test "-v" "../test/test2.txt"
run_test "-t" "../test/test4.txt"
run_test "-T" "../test/test4.txt"
run_test "-E" "../test/test4.txt"