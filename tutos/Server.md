[Link to tutorials on how to run you scipts on a server](https://drive.switch.ch/index.php/s/uZQpjqkURPk30Xm)

### Install stuff
If your are not connected to the Unige WIFI -> You will need to install the [UniGE VPN client](https://plone.unige.ch/distic/pub/reseau/doc-vpn)

#### On Linux:
Install via a terminal
```m
sudo apt-get install sshfs -y
```
#### On Mac:
You can install sshfs on Mac OSX. You will need to download FUSE and SSHFS from the [osxfuse site](https://osxfuse.github.io/)<br/>

#### On Windows:
You can install sshfs from this [exe file](https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/win-sshfs/win-sshfs-0.0.1.5-setup.exe)<br/>

### How to acces cisa-calc
Replace "user" by your user name on your machine
Replace "username" by the user name the administrator of cisa-calc has given you (might not be the same as "user")<br/>

#### No graphic interface -> only terminal
To connect to the cisa-calc: 
```m
ssh username@cisa-calc.unige.ch
```
#### To exit
Just type: 
```m
exit
```
#### With graphic interface -> browse files seamlessly
To mount (or "fuse") a folder from the cisa-calc to your machine: 
First you will have to create an empty folder on your machine (e.g., /home/user/SERVER). <br/>
Then, run this command:
```m
sshfs username@cisa-calc.unige.ch:/home/username/ /home/user/SERVER
```
Explanation: The first term "/home/username/" is the folder you want to mount FROM the server TO your machine. <br/>
The second term "/home/user/SERVER" is the folder you want you TO RECEIVE the data FROM ther server.

#### To unmount
Just type: 
```m
umount -l /home/user/SERVER
```

### Rules 
Jobs cannot be run on the machine without going through Torque.
Submit final jobs, debug on your machine first.


### Power user
What if I don't want to memorize those commands and type them each time? <br/>

#### On Linux and mac:
You can create "aliases" that will act as shortcut commands. THIS IS SO USEFUL!
Inside a terminal: (You can replace vim by any editor (gedit, emacs, etc..))
```m
vim ~/.bash_profile #This will open you "user profile"
```
Then inside you want to press "a" to swith to "insert" mode. <br/>
Navigate to the bottom of the file ans start typing your aliases. <br/>
! NB: there should not be any spaces between your alias name and the command between apostrophes '' !<br/>
Here an example of useful aliases:<br/>
```m
# my super cool aliases
#moving through files
alias cd...='cd ../../../' #go back 3 folders
alias cd....='cd ../../../../' #go back 4 folders
alias ll='ls -alF' #show all files (included hidden files) and permissions
alias la='ls -A' #show all files (included hidden files)

# SERVER
alias CISA='ssh username@cisa-calc.unige.ch # to connnect to cisa-calc
alias FUSE='sshfs username@cisa-calc.unige.ch:/home/username/ /home/user/SERVER' # to mount from cisa-calc
alias UNMOUNT='umount -l /home/user/SERVER' #to unmount folder from your machine


# Useful aliases
alias sourcebash="source ~/.bash_profile" # modif bash profile
alias modbash="vim ~/.bashrc" #source bash profile
alias fuck='eval $(thefuck $(fc -ln -1)); history -r' #evaluate last coimmand and autocompletes
alias open='xdg-open' #open file from terminal (only linux)
alias del='gio trash' # put file to the trash instead to remove them (only linux)
alias searchH='find /home/user/ -name' # seach in user directory
alias searchA='sudo find / -name' #search in whole machine

#ONLY LINUX UPDATE BOOT & POWEROFF
alias update='sudo apt-get update && sudo apt-get upgrade'
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

#function to quickly add commit and push gits
function lazygit() {
            git add .
            git commit -a -m "$1"
            git push}
```



