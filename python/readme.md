### Python  <a name="anaconda"></a>

#### Install Python via Anaconda
Anaconda is a free and open-source distribution of the Python and R (yes, you can kill to birds with one stone) programming languages for scientific computing that aims to simplify package management.
Has useful as it is easy to do [install](https://docs.anaconda.com/anaconda/install/)
It's pretty much a python (and R) package manager for data science, it comes with extremely cool packages such as: Jupyter, SciPy, Spyder, NumPy, ScikitLearn, Pandas, TensorFlow, Matplotlib, Pytorch that you should look into.
Getting familiar with conda environmments could really get you out of a tone of trouble.  <br/>
<p align="center">
<img src="https://opensource.com/sites/default/files/uploads/python_environment_xkcd.png" width="500">
</p>

#### create minimal Python 3.7 env
```markdown
conda create -y                 \
      -n py37                   \
      python=3.7                \
      matplotlib numpy panda
# -n is the name, then the version, then the packages
``` 

#### create minimal Python 2.7 env
This is sometimes very useful to work on "old" python modules (e.g. (PyMVPA: A Python toolbox for machine-learning based data analysis.)[http://www.pymvpa.org/])
```markdown
conda create -y                 \
      -n py27                   \
      python=2.7                \
      matplotlib numpy
```


</br>
<p align="center">
<img src="https://imgs.xkcd.com/comics/python.png" width="500">
</p>

#### Create a Jupyter notebook
jupyter notebook

