# This is a Conky Desktop for system monitoring and good apperance

## Preword
You can see the look of the desktop folowing.   
Probably you would ask, why the daycounter. I've read a book called "The big five for life" and it has shown me that the days we waste are to many. This widget is to remember, that every day is precious and we should be happy in life. So make the best out of your day and try to be happy.   

![alt text](https://github.com/Nex404/conky_desktop/blob/master/images/image.png)

Of course it will appear in your system laguage and not in German.

## Installation of Conky
For the installation of conky you have 2 Options.   
No. 1 is to just install conky and No. 2 is to also install the conky manager, who helps you to setup everything. 

### Installing conky (must do)
```
$ sudo apt-get update
$ sudo apt-get install conky-all
$ conky --version
```
If there appears a version you made everything right



### 1. Option: Manual usage of conky 
copy repository   
move conky folder to home directory and rename to ".conky"   
go into the folder   
open the conky-startup.sh   
change all "YOUR_SYSTEM" to your system name (prob change in file to ~/ )   
also change the cores to your number of cores   
change the script to be executable
```
cd
git clone https://github.com/Nex404/conky_desktop.git
mv conky .conky
cd .conky
nano conky-startup.sh
chmod +x conky-startup.sh
```
You can disable the day counter in the conky-startup.sh by removing the .conkyrc2 part or commenting with #

#### Start Conky by comandline
```
cd 
cd .conky
./conky-startup.sh
``` 

#### Start Conky by System boot
Go to your home directory and into your user configs. Go into folder upstart (autostart in German). Write the following into a file and save it as conky.conf . Reboot and it should appear after 20 sec.

```
cd 
cd .config
cd upstart
touch conky.conf
nano conky.conf

#Write the following into the file
start on startup
task
exec /home/YOUR_SYSTEM_NAME/.conky/conky-startup.sh

#after that reboot
reboot
```


### 2. Option: install ConkyManager
In Conky Manager you can just click the widget you want to appear. You also can add those to system startup by editing the configurations in conky manager.
```
$ sudo add-apt-repository ppa:mark-pcnetspec/conky-manager-pm9
$ sudo apt-get update
$ sudo apt-get install conky-manager
$ conky-manager
```

## Set background
go to the image folder of the repository and set the 143740.jpg as background

## Edit script for your personal day counter
go into the lua script and change the day, month and year of the conky_calc_days funktion to your birthday.
```
cd
cd .conky/lua_scripts
nano calc_backround.lua
```
Finally change the date to your birthday.


## Credits
Thanks to vitux.com for the following guide. It helped me to install ConkyManager and conky.   
https://vitux.com/how-to-install-conky-and-conky-manager-on-ubuntu/

   
All rights to the owner of the background, just got it from google for private use.

