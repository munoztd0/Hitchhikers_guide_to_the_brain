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
```


```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/munoztd0/Hitchhikers_guide_Linux/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.
