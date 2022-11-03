```shell
#!/bin/bash

conda create -n deepv2d
conda activate deepv2d

pip install tensorflow-gpu==1.12.0
pip install h5py
pip install easydict
pip install scipy
pip install opencv-python
pip install pyyaml
pip install toposort
pip install vtk
```

```shell
#!/bin/bash

mkdir -p data && cd data

gdown https://drive.google.com/uc?id=1AlfhZnGmlsKWGcNHFB1i8i8Jzn4VHB15
unzip abandonedfactory.zip
rm abandonedfactory.zip

gdown https://drive.google.com/uc?id=0B-ePgl6HF260NzQySklGdXZyQzA
unzip Barn.zip
rm Barn.zip

wget https://www.eth3d.net/data/slam/datasets/sfm_bench_mono.zip
unzip sfm_bench_mono.zip
rm sfm_bench_mono.zip

wget https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_cabinet.tgz
tar -zxvf rgbd_dataset_freiburg3_cabinet.tgz
rm rgbd_dataset_freiburg3_cabinet.tgz

wget http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/machine_hall/MH_03_medium/MH_03_medium.zip
unzip MH_03_medium.zip
rm MH_03_medium.zip

cd ..
```

# My example
```vm
#!/bin/zsh
source ~/miniconda3/etc/profile.d/conda.sh

cd ~/projects/uav_mapping/DROID-SLAM

conda activate droidenv
```

Run `source ./droid.zsh` or `. ./droid.zsh`.
