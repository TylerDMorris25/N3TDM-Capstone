#!/bin/bash
# Script to Update stripped.csv for Nextion Displays
# Script runs automatically via cron.

# Set RPI to Read/Write
sudo mount -o remount,rw / ; sudo mount -o remount,rw /boot

# Get updated stripped.csv file and put it in tmp files
wget INSERT_STRiPPED.CSV_URL_HERE -O /tmp/stripped.csv

# Copy udpated stripped.csv file over the old stripped.csv file
sudo cp /tmp/stripped.csv /usr/local/etc/stripped.csv

# Reboot the Raspberry Pi.
sudo reboot