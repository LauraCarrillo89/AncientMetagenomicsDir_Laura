#! /usr/bin/env bash
## Read name from positional arguments
name=${1}
## Conditional to add a help message
if [[ ${name} == "--help" || ${name} == "-h" ]]; then
## || means or
  ## Print help message

  echo "This script prints Hello <your_name> into screen."

  echo "To run it type: bash ./first_script.sh <your_name>"

else
## Printing Hello and the specified variable into screen
echo "Hello ${name}"
fi
## We need to write an argument to run: $bash ./first_script.sh Laura and run
