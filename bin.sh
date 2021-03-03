#!/usr/bin/env bash

# exit if required variables aren't set
set -o nounset

# only run on host gate
if [ "$(hostname)" != "gate" ]; then
  echo "This script should only be run on gate."
  exit 1
fi

# if no arguments are provided, output syntax and exit
if [ "$#" -ne 0 ]; then
  echo -e "\nUsage: $0\n"
  exit 1
fi

# list of hosts to copy bin directory to
declare -a BINHOSTS="(atom lasciel nuc storage wall)"

# iterate through list of hosts, rsyncing bin directory and creating if non-existent
for HOST in "${BINHOSTS[@]}"; do
  rsync -a --timeout=5 --rsync-path='mkdir /home/sinc/bin 2>/dev/null; rsync' /home/sinc/bin/ "${HOST}":/home/sinc/bin
  echo "Copied to host ${HOST}."
done