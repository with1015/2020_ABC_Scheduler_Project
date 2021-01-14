#!/bin/bash

source utils.sh
source scheduler.sh

# There is no argument, show help function.
# Then, terminate program.
if [[ ${#} -eq 0 ]]; then
  show_help
  return 1
fi

POLICY=""
LIST_PATH=""
TARGET_PATH=""

# Parse arguments.
while [[ $# -gt 0 ]]
do
  # Get argument token.
  key="$1"

  # Classify argument functions.
  case ${key} in
    -h | --help)
      show_help
      shift
      return 0
    ;;
    -v | --version)
      show_version
      shift
    ;;
    -p | --policy)
      POLICY=$2
      shift
      shift
    ;;
    -l | --list)
      LIST_PATH=$2
      shift
      shift
    ;;
    -t | --target)
      TARGET_PATH=$2
      shift
      shift
    ;;
    # Case for undefined arguments.
    *)
      show_help
      shift
      return 1
    ;;
  esac
done

# Check whether required arguments are filled or not.
if [[ -z "${TARGET_PATH}" || -z "${LIST_PATH}" || -z "${POLICY}" ]]; then
  show_help
  return 1
fi

echo "==============================================================="
echo "Start to run tasks."
echo "Selected Policy: "${POLICY}
echo
${POLICY} ${LIST_PATH} ${TARGET_PATH}
echo
echo "Finished scheduling."
echo "==============================================================="

