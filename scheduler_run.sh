#!/bin/bash

source utils.sh

# There is no argument, show help function.
# Then, terminate program.
if [[ ${#} -eq 0 ]]; then
  show_help
fi

# Parse arguments.
while [[ $# -gt 0 ]]
do
  key="$1"

  case ${key} in
    -h | --help)
      show_help
      shift
    ;;
    -v | --version)
      show_version
      shift
    ;;
    *)
      show_help
      shift
    ;;
  esac
done
