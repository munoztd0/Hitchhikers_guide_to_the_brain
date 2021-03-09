### Rstudio / R  <a name="rstudio"></a>

#### Install R (4.0) on Linux!
If you are on Linux and you absolutely NEED the newest version of R (4.0 at the moment) like I did, you are probably as pissed-off as I was when I saw that it is not anywhere near to be released yet.
But if you don't fear the bleeding edge, I have a solution for you! </br>
```bash
#be sure to totally remove R if you already installed it 
sudo apt-get purge r-base* r-recommended r-cran-*
sudo apt autoremove
sudo apt update

#You will need this 'key' to acces it (it's a new mirror that is not yet released)
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80  --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo apt update
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
#Install new version of R (4.0)
sudo apt install r-base r-base-core r-recommended r-base-dev gdebi-core
```

#### Install Rstudio
First you can already download any [Rstudio](https://rstudio.com/products/rstudio/download/#download) version (still no Focal Fossa update though..)
PS: Be sure to switch to [Nvidia propietary drivers](https://www.linuxbabe.com/desktop-linux/switch-intel-nvidia-graphics-card-ubuntu)
```bash
#or via "wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5042-amd64.deb" # that works for ubuntu 20 others might not
cd ~/Downloads/
sudo gdebi rstudio-1.2.5042-amd64.deb
```
 and get you other package from Rstudio now. </br>
 
[Change the default library options](https://www.accelebrate.com/library/how-to-articles/r-rstudio-library)

#### Manage R version
Via [Anaconda](https://github.com/munoztd0/Hitchhikers_guide_to_the_brain/tree/gh-pages/python)
```bash
conda create -y                 \
      -n r40                   \
      r=4.0.0                \
      r-essentials 
# -n is the name, then the version, then the packages
```

#### Work on a R and Python within the same Jupyter notebook 
Yes jupyter is not only for python, it's actually "language agnostic" and it's called ju-pyt-er because it's mainly meant to work on Julia - Python and R. </br>
First you need to have installed [Anaconda](https://www.anaconda.com/products/individual)  </br>
Then run this commands in a terminal
```bash
R  #open up R (not in Rstudio for this to work)
install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'devtools', 'uuid', 'digest')) # install these packages (and just select you closest CRAN mirror)
devtools::install_github('IRkernel/IRkernel') #download IRkernel 
IRkernel::installspec() #install IRkernel to work on R in jupyter
```


Fire up a jupyter notebook and now you can choose between R and Python. </br>
But for now you it's still on or the other.. We just need to install Rpy2 now </br>
```bash
pip install r2py # or conda install if you prefer
```
Now we can really start to have fun! </br>
In the same notebook you have started just before -> choose python as main kernel </br>
An example of python/R integration </br> 
First cell create a dataframe in python
```py
# Load in the r magic
%load_ext rpy2.ipython

import pandas as pd

# Make a pandas DataFrame
df = pd.DataFrame({'Alphabet': ['a', 'b', 'c', 'd','e', 'f', 'g', 'h','i'],
                   'A': [4, 3, 5, 2, 1, 7, 7, 5, 9],
                   'B': [0, 4, 3, 6, 7, 10,11, 9, 13],
                   'C': [1, 2, 3, 1, 2, 3, 1, 2, 3]})
```
Second cell plot the data with R
```py                   
%%R -i df  #this line transmits the object "df" from python to R
# Plot the DataFrame df
library(ggplot2)
ggplot(data=df) + geom_point(aes(x=A, y=B, color=C)) + theme(text = element_text(family = 'Helvetica-Narrow'))
```
Here you go, python strenght and R beauty in one file !  </br>

PS: if you have issues with fonts (like I did) you might want to run "sudo apt-get install ^fonts-* " 

