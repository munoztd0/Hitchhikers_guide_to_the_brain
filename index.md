## Welcome to my little guide

[editor on GitHub](https://github.com/munoztd0/Hitchhikers_guide_Linux/edit/gh-pages/index.md) 

## Install Linux

First thing will be get you hands on a linux distro, we will assume you chose Ubuntu [dual boot Windows/Linux](https://itsfoss.com/install-ubuntu-dual-boot-mode-windows/) [dual boot Mac/Linux](https://www.lifewire.com/dual-boot-linux-and-mac-os-4125733), but most of the debian-based distro should work as well.

### Install Matlab (only works if you are on the UniGE VPN)

Download Matlab 2019a (it is the most recent versions that works fine the ones above won't work)

Open up a terminal (ctrl+alt+t) and copy paste these lines
```markdown
cd ~/Dowloads/matlab/
sudo ./install
```

Now you will have to sign in to your MathWorks account or create one and follow the matlab installer (try to keep the defaults settings).

Then, when asked for the network license you need to select the "network.lic" file inside the "~/Dowloads/matlab/" folder.

Finish the installation and go back to the terminal. 
```markdown
sudo chmown -R cisa /usr/local/MATLAB/R2019/
matlab &
``

# for Mac
# for windows

# Anaconda
# FSL
# AFNI
# Rstudio
# Zotero


# Bonus
# scripts
# vsCode
# TOdo

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)


### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/munoztd0/Hitchhikers_guide_Linux/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

