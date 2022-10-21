# Conda commands
```sh
conda install <package name>
conda uninstall <package name>

conda --version
conda env create --name <env name> --python=3.7
conda activate <env name>
conda deactivate

conda clean --all  # clean temp downloaded files

conda env list  # list all envs
conda env remove --name myenv  # remove an env
conda env create -f env.yml  # create from yaml file

conda env export -n <env name> > env.yml  # export env yaml


conda list  # list all packages installed into the environment
conda list -n myenv  # save packages for future use:
conda list --export > package-list.txt  # reinstall packages from an export file:
conda create -n myenv --file package-list.txt

conda list >requriements.txt
conda install --file requirements.txt

conda config --set auto_activate_base false  # deactivate base env from the terminal

conda env export --no-builds  # without strict version number(?) 
```

# Pip commands
```sh
pip install <package name>
pip uninstall <package name>

pip cache purge  # clean temp files
pip freeze > requirements.txt
pip install -r requirements.txt
pip list --format=freeze > requirements.txt  # to fix @ absolute symbol issue
pip list --format=freeze > requirements.txt  # removes "path" strings
```

# Common pip and conda packages
```
pip install opencv-python
pip install sklearn
pip install matplotlib
pip install notebook
pip install tensorboard
pip install pandas
pip install pillow

conda install -c open3d-admin open3d
```

# Common DL packages
```
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
pip install pytorch-lightning

conda install -c conda-forge tensorflow-gpu
```

# Common shell commands
**Add network commands
**Add display manager commands
**Add systemctl commands
