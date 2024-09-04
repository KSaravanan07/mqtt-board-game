#!/bin/bash

# File 		: run.sh
# Authors 	: K Saravanan
# Purpose	: Script to run the MQTT game. HiveMQ broker should be started
#		  before running this script.

# Constant filename for player 1
filename="player-1.txt"

# Read the number of players from player-1.txt
num_players=$(head -n 1 "$filename")

# Start the MQTT publisher for each player
for ((i = 1; i <= $num_players; i++)); do
    python3 player.py -n $i & pid=$!
    echo "Process \"$i\" started";
    PID_LIST+=" $pid";
done

# Kill all processes on Ctrl+C
trap "kill $PID_LIST" SIGINT

echo "Parallel processes have started";

# Wait for all processes to complete
wait $PID_LIST

echo
echo "All processes have completed";
