#!/bin/bash

log_and_run() {
    cmd="$1"
    echo -e "\033[32m$cmd\033[0m"
    eval $cmd
    echo -e "\033[32m--------------------\033[0m"
}

#cmd_array=("./process-run.py -l 6:100,5:100 -c"
#    './process-run.py -l 4:100,1:0 -c'
#)
#
#for cmd in ${cmd_array[@]}
#do
#    echo $cmd
#    #log_and_run "$cmd"
#done

log_and_run "./process-run.py -l 6:100,5:100 -c"
log_and_run './process-run.py -l 4:100,1:0 -c'
log_and_run "./process-run.py -l 1:0,4:100 -c"
log_and_run "./process-run.py -l 1:0,4:100 -c -S SWITCH_ON_END"
log_and_run "./process-run.py -l 1:0,4:100 -c -S SWITCH_ON_IO"
log_and_run "./process-run.py -l 3:0,5:100,5:100,5:100 -S SWITCH_ON_IO -I IO_RUN_LATER -c -p"
log_and_run "./process-run.py -l 3:0,5:100,5:100,5:100 -S SWITCH_ON_IO -I IO_RUN_IMMEDIATE -c -p"
log_and_run "./process-run.py -s 1 -l 3:50,3:50, -s 2 -l 3:50,3:50 -s 3 -l 3:50,3:50 -c -p"
