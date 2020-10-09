### AFNI  <a name="afni"></a>
AFNI is definitely a bit more trickier (for Linux user at least) but it's really well documented [here](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/index.html)  
Something that really helped me out was to install 'tcsh' so I could follow their tutorials more strickly (they use C-shell instead of _standard_ 'bash' (Bourne Again SHell) command language which goes along with their geek philosophy)
```markdown
sudo apt-get install -y tcsh
#so you can run their command
tcsh @update.afni.binaries ...
```
After the hustle you might be scared (I was..) by AFNI because the GUI looks more like an ultra confusing pilot cockpit than anything else but.. be brave, its worth it. Also they have an [extensive [ocumantion and a lievly forum](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/)</br>
You might also need to check the output of the "rPkgsInstall -pkgs ALL" command because it might run into different depency issue that you are gonna want to fix ASAP.
```markdown
# run this in a temrinal to check your packages
rPkgsInstall -pkgs ALL -check
``` 

