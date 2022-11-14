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

# My examples
## Example 1
```vm
#!/bin/zsh
source ~/miniconda3/etc/profile.d/conda.sh

cd ~/projects/uav_mapping/DROID-SLAM

conda activate droidenv
```

Run `source ./droid.zsh` or `. ./droid.zsh`.

## Example 2
```sh
#!/bin/bash

# Set variables
if [[ $1 =~ ^(-p|--project_path) ]]
then
    project_path=$2
fi

if [[ $5 =~ ^(-s|--server_ip) ]]
then
    server_ip=$6
fi

user=$4 
env=$8
cam=$10

# Copy video to server
echo "Project path is $project_path"
echo "Copying file..."
scp -r ./tmp $user@$server_ip:$project_path/
echo "Copy process finished..."

# Extracting frames and running droid-slam
ssh $user@$server_ip ". ~/.zshrc; cd $project_path; conda activate $env; echo "Starting frame extraction..."; python3 ./utils/extract_frames_ffmpeg.py -d $cam; echo "Frame extraction completed...";
mkdir $project_path/tmp/output; echo "Running droid-slam..."; python3 demo.py --imagedir=$project_path/tmp/frames --calib=./calib/$cam.txt --reconstruction_path=$project_path/tmp/output; echo "Droid-slam completed...""

# Fetch results
mkdir ./results
scp "$user@$server_ip:$project_path/tmp/output/*" ./results

# Remove tmp folder from server
ssh $server_ip rm -r $project_path/tmp

# Visualize and remove outlier
conda activate open3d
python3 vis.py; python3 outlier_removal.py
```

Command to run:
```
. ./run.sh --project_path /home/pytholic/projects/uav_mapping/UAVmapper --user pytholic --server_ip plato --env droidenv --cam gopro
```
