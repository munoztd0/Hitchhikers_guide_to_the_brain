### Rstudio / R  <a name="rstudio"></a>

#### Install R (4.0) on Linux!
If you are on Linux and you absolutely NEED the newest version of R (4.0 at the moment) like I did, you are probably as pissed-off as I was when I saw that it is not anywhere near to be released yet.
But if you don't fear the bleeding edge, I have a solution for you! </br>
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
```

#### Install Rstudio
First you can already download any [Rstudio](https://rstudio.com/products/rstudio/download/#download) version (still no Focal Fossa update though..)
PS: Be sure to switch to [Nvidia propietary drivers](https://www.linuxbabe.com/desktop-linux/switch-intel-nvidia-graphics-card-ubuntu)
```markdown
#or via "wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5042-amd64.deb" # that works for ubuntu 20 others might not
cd ~/Downloads/
sudo gdebi rstudio-1.2.5042-amd64.deb
```
 and get you other package from Rstudio now. </br>
 
[Change the default library options](https://www.accelebrate.com/library/how-to-articles/r-rstudio-library)

#### Manage R version
Via [Anaconda](https://github.com/munoztd0/Hitchhikers_guide_to_the_brain/tree/gh-pages/python)
```markdown
conda create -y                 \
      -n r40                   \
      r=4.0.0                \
      r-essentials 
# -n is the name, then the version, then the packages
```
