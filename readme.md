# Welcome to my little Hitchhiker's guide to the brain

_'So once you do know what the question actually is, you'll know what the answer means.'_     -Douglas Adams  

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
9. [Cool tips / Hacks / Tweaks](#tweaks)


[All tutorials can be found here!](https://github.com/munoztd0/Hitchhikers_guide_to_the_brain/tree/gh-pages/tutos)


## Introduction <a name="intro"></a>
- Everything _should_ work on Linux (at least for Debian-based distros but if you want a tuto for other distros (i.e Arch-based) I will definetely be happy to help. 
- Some things might defer on Mac OS but if you [install Homebrew](https://treehouse.github.io/installation-guides/mac/homebrew) it will definitely be easier. 
- I assume your folder names are in english but if they are in another language (i.e. french) you will have to change certain commands (e.g. "Downloads" become "Telechargements").

## Linux / Unix <a name="linux"></a>
First thing will be to get you hands on a Linux distribution, I myself use and recommend Pop!_OS, but we will assume you are on Ubuntu (anyhow any [Debian-based](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/KnoppixFamilyTree1210.svg/220px-KnoppixFamilyTree1210.svg.png) distribution should work as well).
You can choose to only have one main OS ([Ubuntu](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview), [Pop!_OS](https://pop.system76.com/)) or to [dual boot Windows/Linux](https://itsfoss.com/install-ubuntu-dual-boot-mode-windows/), or to [dual boot Mac/Linux](https://www.lifewire.com/dual-boot-linux-and-mac-os-4125733).  
<p align="center">
<img src="https://www.explainxkcd.com/wiki/images/4/40/cautionary.png" width="700">
</p>

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
I also personally recommend to install/take a look at these extensions according to your needs:
[Design optimisation](https://www.bobspunt.com/easy-optimize-x/) by Bob spunt
[EEG lab](https://sccn.ucsd.edu/eeglab/download.php) for timeseries analysis

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

### 5.2 Install a SPM extensions
If you want to install a SPM toolbox you should do the same thing but instead of "/Applications/MATLAB_R2019a.app/toolbox/" you will put
"/Applications/MATLAB_R2019a.app/toolbox/spm12/toolbox/"

For example to install MarsBar on mac:
Go to [SPM extensions](https://www.fil.ion.ucl.ac.uk/spm/ext/) and download MarsBar
```markdown
cd ~/Downloads
unzip marsbar-0.44.zip ## replace 0.44 by the version you have downloaded
sudo mv -r ~/Downloads/marsbar-0.44 /usr/local/MATLAB/R2019a/toolbox/spm12/toolbox/marsbar #here I change the name "marsbar-0.44" to "marsbar" so its easier to remember and deal with 
matlab & #this will open a matlab instance
```
Then inside the matlab console
```markdown
addpath /Applications/MATLAB_R2019a.app/toolbox/spm12/toolbox/marsbar
savepath
```

I personally recommend to install/take a look at these SPM extensions:

Modeling:
-MACS Model Assessment, Comparison and Selection (really useful to do BMS)
-MRM Multivariate and Repeated Measures (my personal favorite for repeated measures second level analyisis + permutation based inferences)
-RobustWLS Robust regression using Weighted-least-squares 
-SnPM Statistical Nonparametric Mapping
-SwE Sandwich Estimator Toolbox for Longitudinal & Repeated Measures Data

ROI analysis - Anatomical proability masks:
-MarsBar MARSeille Boite A Region d'interet (must have for creating ROI + super fun documentation)
-SPM Anatomy toolbox

Connectivity and PPI:
-CONN Functional Connectivity Toolbox (really cool and simple to use)
-gPPI 

Display:
-Bspmview (really cool user interface for exploring statistical images)

Experimental design;
-fMRIPower (power calculation for fMRI)

PsychoPhysio:
-[PsPM](https://github.com/bachlab/PsPM) not in the spm extensions website (but SHOULD be installed as an extension)


Finally cool thems for matlab 
https://github.com/scottclowe/matlab-schemer 
Then just type "schemer_import" and choose the matrix.prf

## IDE (integrated development environment)  <a name="ide"></a>
Here things might start to get personal...    <br/>
<p align="center">
<img src="https://image2.slideserve.com/4300633/slide1-n.jpg" width="700">
</p>

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
<p align="center">
<img src="https://opensource.com/sites/default/files/uploads/python_environment_xkcd.png" width="500">
</p>

#### create minimal Python 3.7 env
```markdown
conda create -y                 \
      -n py37                   \
      python=3.7                \
      matplotlib numpy
``` 

#### create minimal Python 2.7 env
```markdown
conda create -y                 \
      -n py27                   \
      python=2.7                \
      matplotlib numpy
``` 

### FSL  <a name="int4"></a>
FSL (pronounced "fossil") is pretty easy to [install](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FslInstallation) through their 'fslinstaller.py'
BUT be sure to use python2 as follows:
```markdown
sudo apt install python2
python2 fslinstaller.py
``` 
### AFNI  <a name="afni"></a>
AFNI is definitely a bit more trickier (for Linux user at least) but it's really well documented [here](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/index.html)  
Something that really helped me out was to install 'tcsh' so I could follow their tutorials more strickly (they use C-shell instead of _standard_ 'bash' (Bourne Again SHell) command language which goes along with their geek philosophy)
```markdown
sudo apt-get install -y tcsh
#so you can run their command
tcsh @update.afni.binaries ...
```
After the hustle you might be scared (I was..) by AFNI because the GUI looks more like an ultra confusing pilot cockpit than anything else but.. be brave, its worth it.


### Rstudio / R  <a name="rstudio"></a>

#### Install R (4.0) on Linux!
If you are on Linux and you absolutely NEED the newest version of R (4.0 at the moment) like I did, you are probably as pissed-off as I was when I saw that it is not anywhere near to be released yet.
But if you don't fear the bleeding edge, I have a solution for you!
```markdown
#be sure to totally remove R if you already installed it 
sudo apt-get purge r-base* r-recommended r-cran-*
sudo apt autoremove
sudo apt update

#You will need this 'key' to acces it (it's a new mirror that is not yet released)
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
#sudo apt install libssl-dev # install libraries
sudo apt update
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
#Install new version of R (4.0)
sudo apt install r-base r-base-core r-recommended r-base-dev gdebi-core
#Then you can just download [Rstudio](https://rstudio.com/products/rstudio/download/#download) (still no Focal Fossa update though..)
#or via wget 
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5042-amd64.deb # that works for ubuntu 20 others might not
sudo gdebi rstudio-1.2.5042-amd64.deb
```
 and get you other package from Rstudio now.



### Remote Server (AKA Cisa-Calc) <a name="server"></a> 

<p align="center">
   <img  src="https://www.cyberciti.biz/media/new/cms/2020/09/sandwich.png" width="270"/>
   <img  src="https://imgs.xkcd.com/comics/incident.png" width="500"/>
</p>



### Zotero  <a name="zotero"></a>
The snap store version of Zotero didn't work on my machines for whatever reasons so here is another way to get your Zotero working on Linux.
```markdown
sudo add-apt-repository ppa:smathot/cogscinl
sudo apt-get update
sudo apt-get install zotero-standalone
```
#### Install Better BibTex
Better BibTex is just so much easier to work with since it ouput a comprehensible output so go to [Better BibTex](https://github.com/retorquere/zotero-better-bibtex/releases).  
Right click on the '.xpi' and chose'save link as'  
Now form Zotero go to 'Tools' -> 'Add-ons' and under the gear icon choose 'Install add-on from fille..'  
Browse to where you saved the '.xpi' file and that's it! #ThankLaviniaForThisOne 

### Backups <a name="backup"></a>
#### Simple backups with timeshift (need an external drive though)
Well this one is a biggie. We are all scared to loose are data so backing it up is a must do. The university suggest to use TSM (tivoli storage manager) but it's garbage. First, it'sa huge pain to install on Linux, second it doesn't alert you if there is a problem to fix, third it's IBM.
I personnally know someone who lost 3 years worth of work while having TSM installed (not even on Linux so this is not an OS issue) and the university never find a way to restore the data.
So one solution I personnaly suggest, just buy an external drive (you can have 500Gb for 30$ nowadays so I don't think it's too much to be on the safe side) and install [Timeshift](https://itsfoss.com/backup-restore-linux-timeshift/).

### Cool software <a name="tweaks"></a>
#### GIMP #the snap one doesn't work properly
sudo add-apt-repository ppa:ubuntuhandbook1/gimp
sudo apt update
sudo apt install gimp gimp-gmic

### Fun hacks (AKA just for fun)
#### Install "insults" to linux
This will make your terminal "insult" you every time you mistype your password (it's hilarious trust me)
```markdown
sudo visudo
#you are now inside vi in "read" mode
#press "a" to be in the "insert" mode
#move to a line below  # Override built-in defaults
Defaults insults
```
the -fuck command

#### Tweaking your computer (on cisa's Dell desktops)
First and foremost you should NEVER tweak boot options if you are not 200% sure of what you are doing. Now if you want (as I did) to speed up your boot time, I found out that disabling the (unused) legacy boot mode (since I assume that you are running UEFI boot on most linux distros).

Just press F2 (or maybe F12 depending on your model) at the sight of the Dell logo until you see the [BIOS menu](https://kbimg.dell.com/library/KB/DELL_ORGANIZATIONAL_GROUPS/DELL_GLOBAL/Content%20Team/UEFI_BIOS_Add_Boot_Option.png). From there you can change your Boot list options from Legacy to UEFI. Then you should [disable (uncheck) Legacy Option ROMs](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dell.com%2Fsupport%2Farticle%2Fde-ch%2Fsln306176%2Fxps-13-9365-slow-post-and-poor-performance-in-bios&psig=AOvVaw0WmMWuLP2GPnlESRTFIZ0i&ust=1601472719428000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLirmve8juwCFQAAAAAdAAAAABAD). Then, under the "Security" tab
you should now disable Secure boot. Save, apply and restart. That's it you will boot in ~12 seconds now instead of the huge 1m30 before.

expliqer comment ls -n softlink tidy

Purves:  https://drive.google.com/file/d/15Qaw-PSCSXHCSBWY_PxnQK2N7tYVt0Py/view?usp=sharing


### scripts
### TOdo

## images

<p align="center">
       <img   src="https://imgs.xkcd.com/comics/is_it_worth_the_time.png" width="300"/>
   <img  src="https://imgs.xkcd.com/comics/automation.png" width="300"/>
</p>

<p align="center">
    <img  src="https://i.ibb.co/qdVJhj9/53204889-1307657079386313-5400484366092599296-n.jpg" width="300"/>
   <img  src="https://www.explainxkcd.com/wiki/images/6/6f/file_extensions.png" width="300"/>
</p>


<p align="center">
   <img  src="https://imgs.xkcd.com/comics/machine_learning.png" width="300">
</p>


<!--Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/munoztd0/Hitchhikers_guide_to_the_brain/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.-->
[link to guide](https://munoztd0.github.io/Hitchhikers_guide_to_the_brain/)
