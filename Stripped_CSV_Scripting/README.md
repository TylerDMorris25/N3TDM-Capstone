# Scheduling Update of Stripped.csv File

Here you will find the instructions for using the update_stripped.sh file found in this folder.

## Setup the Script

### Login via SSH
Go to the Configuration > Expert > SSH Access page. 
The username is pi-star and the default password is raspberry

Once logged in, make sure you're in the Pi-Star user's home directory:
`cd /home/pi-star`

### Set Pi-Star Read/Write
`rpi-rw`

### Download the Script
`wget https://github.com/TylerDMorris25/N3TDM-Capstone/raw/master/Stripped_CSV_Scripting/update_stripped.sh -O /home/pi-star/update_stripped.sh`

### Edit Script to Change stripped.csv URL
`sudo nano update_stripped.sh`

Move your cursor with the arrow keys to line 9 which starts with "wget". Delete the text in all caps and replace it with the URL that points directly to a stripped.csv file on the internet. Please be respectful to those who post updated stripped.csv files and don't pull them automatically if the owners request you not to do that.

Press CTRL + x, then press the letter y.
Then make sure the filename does not say DOS Format in brackets.
If for whatever reason it does say DOS Format, press ALT + d

Make sure the filename is update_stripped.sh and press enter. 

### Make Script Executable
`sudo chmod +x update_stripped.sh`

___

## Setup System Cron

### Go to System Cron Editor
Click Configuration > Expert > System Cron.

You will see a white box with some text in it.

### Add your Update Script to System Cron
Click on the last line in the white box. You should be on a blank line.

Type or Copy/Paste the following line, making changes to the scheduled run time as needed.
`15 6 * * * root bash /home/pi-star/update_stripped.sh`

**The system cron file MUST end with a blank line. MAKE SURE YOU PRESS ENTER TO INSERT A NEW LINE!**

Press "Apply Changes" to save your cron job.

___

## System Cron Info
About halfway down the text box you will see the following line:
"# m h dom mon dow user command"
   This line tells us the format of each cron task. The # symbol indicates a comment and tells cron to ignore that line.
   
Refer to the chart below for info & options for each position.

![System Cron Options Chart](https://github.com/TylerDMorris25/N3TDM-Capstone/raw/master/images/cron_options.jpg "System Cron Options")

For more information, feel free to contact me through [my blog's contact page](https://n3tdm.tdmorris.com/contact/).

73,
Tyler N3TDM