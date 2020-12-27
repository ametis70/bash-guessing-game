#!/usr/bin/env bash
set -euo pipefail # https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/

files=$(ls | wc -l)     # Number of files in current directory
number_regex='^[0-9]+$' # Used to check if the input is a number

echo 'Try to guess the number of files in the current directory'

main() {
while :
do
  read -ep "Enter a number:" try

  if ! [[ $try =~ $number_regex ]]; then
     echo 'Invalid input. Only numbers are accepted'
     elif [[ $try -eq files ]]; then
     echo 'Congratulations, you guessed correctly!'
     exit 0
     elif [[ $try -lt files ]]; then
     echo 'The number you entered is lower than the correct one'
     elif [[ $try -gt files ]]; then
     echo 'The number you entered is higher than the correct one'
 fi
done
}

main
