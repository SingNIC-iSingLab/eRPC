#!/usr/bin/env bash
# Generate a basic autorun process list file for Apt.

if [ "$#" -ne 1 ]; then
  echo "Illegal number of parameters"
	echo "Usage: ./gen_autorun_process_file.sh <number of processes to generate>"
	exit
fi

# Generate process names for Apt
# $1: The number of processes to generate
function gen_apt() {
  process_ids=`seq 1 $1`
  for process_i in $process_ids; do
    echo akalianode-$process_i.RDMA.fawn.apt.emulab.net 31850 0 >> autorun_process_file
  done
}

# Generate process names for CloudLab
# $1: The number of processes to generate
function gen_cloudlab() {
  process_ids=`seq 1 $1`
  for process_i in $process_ids; do
    #echo akalianode-$process_i.RDMA.ron-PG0.utah.cloudlab.us 31850 0 >> autorun_process_file
    echo 10.10.1.$process_i 31850 0 >> autorun_process_file
  done
}

rm -f autorun_process_file
#gen_apt $1
gen_cloudlab $1
