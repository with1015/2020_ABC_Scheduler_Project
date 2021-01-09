#!/bin/bash

# Show how to use scheduler.sh script.
# You can modify this as you want.

function show_help(){
  echo "==============================================================="
  echo
  echo "Usage:"
  echo "  source scheduler_run.sh [--options] <option target>"
  echo
  echo "Option list:"
  echo "  (required) --policy (or -p) <policy_name>"
  echo "  (required) --list   (or -l) <task_list_file>"
  echo "  (required) --target (or -t) <task_targets_folder>"
  echo
  echo "  (optional) --help    (or -h) : show this helper message."
  echo "  (optional) --version (or -v) : show version of this file."
  echo
  echo "==============================================================="

  return 0
}

# Show version of this program.
# You can modify this as your want.

function show_version(){
  echo "-- Bash scheduler version 1.0.0-Release --"
  echo "  Bash scheduler for 20-21 Winter ABC Mentoring Program."
  echo "  Created by Hyunjoon Jeong."
  echo "  Git blog: https://with1015.github.io/"

  return 0
}


