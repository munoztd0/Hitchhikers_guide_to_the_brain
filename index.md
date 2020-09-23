# Welcome to my little Hitchhiker's guide to the brain

_'So once you do know what the question actually is, you'll know what the answer means.'_   Douglas Adams  

Credit for all the comic goes to [Randall Munroe](https://xkcd.com/)

# Table of contents
1. [Introduction](#linux)
2. [Linux / Unix](#linux)
   <!-- 1. [Sub paragraph](#subparagraph1) -->
3. [Matlab (via UniGe)](#matlab)
3. [IDE](#ide)
4. [Anaconda / Python](#ananconda)
5. [FSL](#fsl)
6. [AFNI](#afni)
7. [Rstudio / R](#rstudio)
8. [Zotero / BetterBibTex](#zotero)
9. [Timeshift / Backups](#backup)


[editor on GitHub](https://github.com/munoztd0/Hitchhikers_guide_to_the_brain/edit/gh-pages/index.md) 

[link to guide](https://munoztd0.github.io/Hitchhikers_guide_to_the_brain/)

## Introduction <a name="intro"></a>
- Everything _should_ work on Linux (at least for Debian-based distros but if you want a tuto for other distros (i.e Arch-based) I will definetely be happy to help. 
- Some things might defer on Mac OS but if you [install Homebrew](https://treehouse.github.io/installation-guides/mac/homebrew) it will definitely be easier. 
- I assume your folder names are in english but if they are in another language (i.e. french) you will have to change certain commands (e.g. "Downloads" become "Telechargements").

## Linux / Unix <a name="linux"></a>
First thing will be to get you hands on a Linux distribution, I myself use and recommend Budgie, but we will assume you are on Ubuntu (anyhow any Debian-based distro should work as well).
You can choose to only have one main OS ([Ubuntu](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview), [Budgie](https://ubuntubudgie.org/)) or to [dual boot Windows/Linux](https://itsfoss.com/install-ubuntu-dual-boot-mode-windows/), or to [dual boot Mac/Linux](https://www.lifewire.com/dual-boot-linux-and-mac-os-4125733).  
<img class="center" src="https://www.explainxkcd.com/wiki/images/4/40/cautionary.png" width="1000">


## Matlab  <a name="matlab"></a>
### 1. Install VPN unige (these matlab instalation only works if you are on the UniGE VPN)
Follow these instructions [Install VPN UniGe all OS](https://plone.unige.ch/distic/pub/reseau/doc-vpn)

### 2. Download Matlab
Go to [matlab home page](https://ch.mathworks.com/)
Create an account or sign in and add a license number (2537).
Then click on the license to start the dowload menu. Choose whatever OS you need (Linux, Mac, Windows).
Choose the version of matlab. Here I recommend you choose matlab 2019a since the newer version have issue with the server license authentification (at least for Mac and Linux).
Finally [download the license file for UniGe](https://drive.switch.ch/index.php/s/CGaD8jZTPr7bNnF). (You might need a _Switch_ account).

### 3. Install Matlab
#### 3.a For Linux
Fire up a terminal (ctrl+alt+t) and copy paste these lines
```markdown
cd ~/Dowloads/
unzip matlab.zip
cd matlab
unzip matlab_R2019a_glnxa64.zip #or whichever version 
sudo ./install 
```
#### 3.b For Mac or Windows
Just double click on the matlab file installer (matlab_R2019a_maci64.dmg or matlab_R2019a_win64.exe)

### 4. Finisg Installing (all OS)
Now you will have to sign in to your MathWorks account and follow the matlab installer (try to keep the defaults settings so the rest of the tutorial works smoothly otherwie you will need to adapt accordingly).
Choose the newtork license (2537).
Then, when prompted for the license file you need to select (browse) the "network.lic" file inside your "Downloads" folder you downloaded earlier.

#### 4.a For Linux only
```markdown
# replace _cisa_ by YOUR USERNAME
sudo chmown -R cisa /usr/local/MATLAB/R2019a/
```

### 5. Install an external toolbox (here -> SPM12)
[Download SPM](https://www.fil.ion.ucl.ac.uk/spm/software/download/) here version 12.

#### 5.a For Linux 
```markdown
cd ~/Downloads
unzip spm12.zip
sudo mv -r ~/Downloads/spm12 /usr/local/MATLAB/R2019a/toolbox/ #this will ask your admin password
matlab & #this will open a matlab instance
```
Then inside the matlab console
```markdown
addpath /usr/local/MATLAB/R2019a/toolbox/spm12
savepath
```
Here it is, that's the proper way to install an external toolbox on matlab.
BONUS: If you want to install a SPM toolbox you should do the same thing but instead of "/usr/local/MATLAB/R2019a/toolbox/" you will put
"/usr/local/MATLAB/R2019a/toolbox/spm12/toolbox/"

#### 5.b For Mac
Double click on the spm12.zip to exctract the folder with the archive utility

Then open up a terminal (either via the spotlight search or in Application -> Utilities)
```markdown
mv -r ~/Downloads/spm12 /Applications/MATLAB_R2019a.app/toolbox/ 
matlab & #this will open a matlab instance or you can just click on the matlab icon in your application
```
Then inside the matlab console
```markdown
addpath /Applications/MATLAB_R2019a.app/toolbox/spm12
savepath
```
BONUS: If you want to install a SPM toolbox you should do the same thing but instead of "/Applications/MATLAB_R2019a.app/toolbox/" you will put
"/Applications/MATLAB_R2019a.app/toolbox/spm12/toolbox/"


## IDE (integrated development environment)  <a name="ide"></a>
Here things might start to get personal...    <br/>
![alt text](https://image2.slideserve.com/4300633/slide1-n.jpg)

There is much debate on what is THE best IDE but here I will just tell you what I think is best to start with.
### VS studio
Get [Visual Studio Code](https://code.visualstudio.com/download) for long and heavy duty coding.
It has thousand of cool features, great deb<a name="introduction"></a>ugging mode, and you can easyly choose which environement profile you want to be in.

### Vim
Use Vim to create and tinkle files in your terminal (or when you ssh connect to a remote server) 
```markdown
sudo apt-get install vim
vim file.txt 
```
#### Basics commands in Vim
This will create a 'file.txt' file (if it doesn't exist already otherwise it just modifies it) and opens vim editor (or put sudo in front if you want to create/modify a file with super user privileges). 
<br/>
First you will be on a 'read-only' mode.  
**Press 'a' to insert** or modify text (this is just a security so you don't change something by mystake).  
Then you are free to type whatever you want or move to another lign (with the arrow keys the mouse will not help you here!) or press 'ctrl+shift+v' to paste any text you gave copied on your clipboard.  
**Press 'esc' to escape** the insert mode and go back to 'read-only' mode.  
**Press ':wq' + 'enter' to save and quit**.   
<br/>
-"Wait whhhat?!"  
So basically the ':' is to start a command, the 'w' is to save ('write') modficiations and 'enter' just runs the command.  
-**"What if I messed up ?"**  
Don't worry, **just press ':q!'** when you are in the 'read-only' mode and that will close the file without saving (here I added the '!' which is the 'force' command).  



### Anaconda / Python  <a name="anaconda"></a>
Has useful as it is easy to do [install](https://docs.anaconda.com/anaconda/install/)
It's pretty much a python package manager for data science, it comes with extremely cool packages such as: Jupyter, SciPy, Spyder, NumPy, ScikitLearn, Pandas, TensorFlow, Matplotlib, Pytorch that you should look into.
Getting familiar with conda environmments could really get you out of a tone of trouble.  <br/>
![alt text](https://opensource.com/sites/default/files/uploads/python_environment_xkcd.png =250x250)


### FSL  <a name="int4"></a>
FSL (pronounced "fossil") is pretty easy to [install](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FslInstallation) through their 'fslinstaller.py'
BUT be sure to use python2 as follows:
```markdown
sudo apt install python2
python2 fslinstaller.py
``` 
### AFNI  <a name="afni"></a>
### Rstudio / R  <a name="rstudio"></a>
### Remote Server (AKA Cisa-Calc) <a name="server"></a> 

![alt tex](https://www.cyberciti.biz/media/new/cms/2020/09/sandwich.png =250x250)  |  ![alt tex](https://imgs.xkcd.com/comics/incident.png =250x250)



### Zotero  <a name="zotero"></a>

Better BibTex https://github.com/retorquere/zotero-better-bibtex/releases
right click on the '.xpi' and chose'save link as'
Now form Zotero go to 'Tools' -> 'Add-ons' and under the gear icon choose 'Install add-on from fille..'
Browse to where you saved the '.xpi' file and that's it! #ThankLaviniaForThisOne

### Timeshift <a name="backup"></a>

# Bonus 
### scripts
### TOdo



<!--Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/munoztd0/Hitchhikers_guide_to_the_brain/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.-->

