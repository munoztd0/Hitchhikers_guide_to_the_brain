
## Introduction <a name="intro"></a>
- Everything here _should_ work on Linux (at least for Debian-based distros but if you want a tuto for other distros (i.e Arch-based) I will definetely be happy to help. 
- Some things might defer on Mac OS but if you [install Homebrew](https://treehouse.github.io/installation-guides/mac/homebrew) it will definitely be easier (meaning you could theorically change all the "apt" commands by "brew". 
- I assume your folder names are in english but if they are in another language (i.e. french) you will have to change certain commands (e.g. "Downloads" become "Telechargements").

## Linux / Unix <a name="linux"></a>
First thing will be to get you hands on a Linux distribution, I myself use and recommend Pop!_OS, but we will assume you are on Ubuntu (anyhow any [Debian-based](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/KnoppixFamilyTree1210.svg/220px-KnoppixFamilyTree1210.svg.png) distribution should work as well).
You can choose to only have one main OS ([Ubuntu](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview), [Pop!_OS](https://pop.system76.com/)) or to [dual boot Windows/Linux](https://itsfoss.com/install-ubuntu-dual-boot-mode-windows/), or to [dual boot Mac/Linux](https://www.lifewire.com/dual-boot-linux-and-mac-os-4125733).  
<p align="center">
<img src="https://www.explainxkcd.com/wiki/images/4/40/cautionary.png" width="700">
</p>




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


### Zotero  <a name="zotero"></a>
The snap store version of Zotero didn't work on my machines for whatever reasons so here is another way to get your Zotero working on Ubuntu 20 [here](https://askubuntu.com/questions/1124724/zotero-does-not-lauch)

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
```markdown
sudo add-apt-repository ppa:ubuntuhandbook1/gimp
sudo apt update
sudo apt install gimp gimp-gmic
```

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



Credit for all the comic goes to [Randall Munroe](https://xkcd.com/)

