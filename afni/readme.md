### AFNI  <a name="afni"></a>
AFNI is definitely a bit more trickier (for Linux user at least) but it's really well documented [here](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/index.html)  
I personally run into a lot of issues trying to install 'brms' but I found out that x
```markdown
# by installing V8 and gsl 
sudo apt-get install -y libv8-dev libgsl-dev libudunits2-dev

# And then adding this PPAs
sudo add-apt-repository -y "ppa:marutter/rrutter3.5"
sudo apt update
sudo apt install r-cran-rstan -y
sudo apt-get install r-cran-shinystan r-cran-brms -y
```
You can get a clean install !


After the hustle you might be scared (I was..) by AFNI because the GUI looks more like an ultra confusing pilot cockpit than anything else but.. be brave, its worth it. Also they have an [extensive [ocumantion and a lievly forum](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/)</br>
You might also need to check the output of the "rPkgsInstall -pkgs ALL" command because it might run into different depedency issues (especially for BRMS) that you are gonna want to fix ASAP.
```markdown
# run this in a terminal to check your R packages
rPkgsInstall -pkgs ALL -check
# run this in a terminal to check your afni install
afni_system_check.py -check_all
``` 

