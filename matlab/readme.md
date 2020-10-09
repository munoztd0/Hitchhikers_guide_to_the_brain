# Welcome to my little Hitchhiker's guide to the brain

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


#### Cool themes for matlab 
Just downoad [matlab schemer](https://github.com/scottclowe/matlab-schemer)
open matlab
```markdown
cd ~/Downloads/matlab-schemer
schemer_import #just runs "schemer_import" 
#and the choose the matrix.prf (or antoher theme)
```
