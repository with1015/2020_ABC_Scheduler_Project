#!/bin/bash

function FCFS(){
  LIST_PATH=$1
  TARGET_PATH=$2

  while read line
  do
    cd ${TARGET_PATH}
    ${line}
    cd ..
  done < ${LIST_PATH}
}
