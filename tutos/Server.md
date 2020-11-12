[Link to tutorials on how to connect and run you scipts on a server](https://drive.switch.ch/index.php/s/uZQpjqkURPk30Xm)

## How to Use cisa-calc

### On Linux:
Instal via terminal
```m
sudo apt-get install sshfs

```
### On Mac:
You can install sshfs on Mac OSX. You will need to download FUSE and SSHFS from the [osxfuse site](https://osxfuse.github.io/)

### On Windows:
You can install sshfs from this [exe file](https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/win-sshfs/win-sshfs-0.0.1.5-setup.exe)

A Linux partition if you work on window (no need if you work on mac)
Fuse 
Your favorite text editor (e.g., atom, sublime, gedit, emacs..)
Get familiar with the terminal and the basic bash commands to navigate folders and files. This is a nice tutorial: 
Write your matlab scripts in a function format.



How to use

To connect on cisa-calc: ssh –Y username@129.194.96.80
Create one folder per project (e.g., PAVMOD)
Move your data on the cluster with sftp (e.g., filezilla)
Each job must be submitted with in a bash script (see examples) you need to always largely overestimate the walltime and the memory required by your job.
To mount a virtualdisk on your machine: sshfs username@129.194.96.80:/home/username  ~/mountpoint

Rules 

Jobs cannot be run on the machine without going through Torque.
Submit final jobs, debug on your machine first.


Things we might want to add 

Set the mail delivery when jobs are done
Install maui and set rules to execute jobs

