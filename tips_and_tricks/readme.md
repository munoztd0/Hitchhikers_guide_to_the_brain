
## Introduction <a name="intro"></a>
- Everything _should_ work on Linux (at least for Debian-based distros but if you want a tuto for other distros (i.e Arch-based) I will definetely be happy to help. 
- Some things might defer on Mac OS but if you [install Homebrew](https://treehouse.github.io/installation-guides/mac/homebrew) it will definitely be easier (meaning you could theorically change all the "apt" commands by "brew". 
- I assume your folder names are in english but if they are in another language (i.e. french) you will have to change certain commands (e.g. "Downloads" become "Telechargements").

## Linux / Unix <a name="linux"></a>
First thing will be to get you hands on a Linux distribution, I myself use and recommend Pop!_OS, but we will assume you are on Ubuntu (anyhow any [Debian-based](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/KnoppixFamilyTree1210.svg/220px-KnoppixFamilyTree1210.svg.png) distribution should work as well).
You can choose to only have one main OS ([Ubuntu](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview), [Pop!_OS](https://pop.system76.com/)) or to [dual boot Windows/Linux](https://itsfoss.com/install-ubuntu-dual-boot-mode-windows/), or to [dual boot Mac/Linux](https://www.lifewire.com/dual-boot-linux-and-mac-os-4125733).  
<p align="center">
<img src="https://www.explainxkcd.com/wiki/images/4/40/cautionary.png" width="700">
</p>


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



Credit for all the comic goes to [Randall Munroe](https://xkcd.com/)

