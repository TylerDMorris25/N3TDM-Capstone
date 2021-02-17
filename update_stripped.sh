#!/bin/bash
# Script to Update stripped.csv for Nextion Displays
# Script runs automatically via cron.

# Set RPI to Read/Write
rpi-rw

# Get updated stripped.csv file and put it in tmp files
wget INSERT_URL_HERE -O /home/pi-star/stripped.csv

# Copy udpated stripped.csv file over the old stripped.csv file
cp /home/pi-star/stripped.csv /usr/local/etc/stripped.csv

# Reboot the Raspberry Pi.
sudo reboot