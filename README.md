# MQTT Board Game

This repository contains the Python code for running an MQTT board game with HiveMQ as the MQTT broker.

## How to Run

First, start the HiveMQ broker:

```bash
./path/to/hivemq-<VERSION>/bin/run.sh
```

Next, ensure the game .txt files are in the same directory as player.py and run.sh. Then, run the following commands to launch the game:

```
chmod a+x ./run.sh
./run.sh
```
