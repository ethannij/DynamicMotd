# DynamicMotd  
DynamicMotd is a shell script that allows for a command to be run, and displayed at your tty login screen. An ideal use case for this script would be to pull in info, like system information, or print a message upon login. By default this script prints neofetch, but this can be changed by simple replacing "neofetch" with whatever script/program you would like to run.  
  
# How does it work?  
DynamicMotd is a very simple script, it clears your motd file, runs a command, and pipes the output to your /etc/motd directory.  
Since /etc/motd displays text in your tty after login, you can set scripts to show, weather, calendar, noefetch, among many other things.  
  
# How to Use  
DynamicMotd is a very easy script to set up.  
#1. 
To execut DynamicMotd, you must make it executable.  
`root# chmod +x /path/to/DynamicMotd.sh`  
  
#2.  
To tell the computer to execute DynamicMotd at login, you must at it to your `/etc/profile`.  
`vim /etc/profile`  
`/bin/sh /path/to/DynamicMotd.sh`  
  
#3. 
To allow DynamicMotd to edit your /etc/motd, you must chown the file with your user.  
`root# chown $USER /etc/motd`  
  
Now, reboot your computer, or `source /etc/profile` to enable DynamicMotd to run.  
