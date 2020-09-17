## Welcome to my little guide

[editor on GitHub](https://github.com/munoztd0/Hitchhikers_guide_to_the_brain/edit/gh-pages/index.md) 

[link to guide](https://munoztd0.github.io/Hitchhikers_guide_to_the_brain/)


## Install Linux

First thing will be get you hands on a linux distro, we will assume you chose Ubuntu [dual boot Windows/Linux](https://itsfoss.com/install-ubuntu-dual-boot-mode-windows/) [dual boot Mac/Linux](https://www.lifewire.com/dual-boot-linux-and-mac-os-4125733), but most of the debian-based distro should work as well.

### Install VPN unige

### Install Matlab on Linux (only works if you are on the UniGE VPN)

[Download Matlab r2019a](https://drive.switch.ch/index.php/s/m8PCkw6tKJo40DH) it is the most recent versions that works fine the ones above won't work (and you might need a switchdrive account)

Open up a terminal (ctrl+alt+t) and copy paste these lines
```markdown
cd ~/Dowloads/
unzip matlab.zip
cd matlab
unzip matlab_R2019a_glnxa64.zip
# for MAC OS use:  unzip matlab_R2019a_maci64.dmg.zip instead
sudo ./install
```

Now you will have to sign in to your MathWorks account or create one and follow the matlab installer (try to keep the defaults settings).

Then, when asked for the network license you need to select the "network.lic" file inside the "~/Dowloads/matlab/" folder.

Finish the installation and go back to the terminal. 
```markdown
# replace _cisa_ by YOUR USERNAME
sudo chmown -R cisa /usr/local/MATLAB/R2019/
# for MAC OS use: sudo chmown -R XX
matlab &
```

### for Mac
### for windows

### Anaconda
### FSL
### AFNI
### Rstudio
### Zotero


# Bonus
### scripts
### vsCode
### TOdo
### Timeshift

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)


### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/munoztd0/Hitchhikers_guide_to_the_brain/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

