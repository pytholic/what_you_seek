# Docker

## Common commands
```sh
docker build .
docker build -t pytholic/tandem -f dockerfile .
docker run
docker run --name <container name> -it <image>  # name is passed at the end after all the options
docker ps -a  # list all containers
docker container ls -a  # show all containers
docker container ps -a

docker container stop [ID]
docker container rm [ID]

docker system prune  # remove all unused containers

docker images  # view all images
docker images -a  # views images with intermediate image layers -> not very usefull

docker image list
docker image inspect <IMAGE ID>

docker cp foo.txt container_id:/foo.txt  # copy file from host to container
docker cp container_id:/foo.txt foo.txt  # copt from container

docker cp src/. container_id:/target  # multiple files
docker cp container_id:/src/. target

docker exec <container> rm -rf <YourFile>  # removing folder inside container

docker stats  # details about container CPU, memory etc.

docker start <name>  # start a container
docker start -ai <name>  # if x11 container does not start

docker build -t pytholic/tandem -f <filename> .  # build image

docker rm <container>
docker rmi <image>
docker rm -f <Container>  # force flag

docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker rename CONTAINER NEW_NAME

docker rmi REPOSITORY:TAG  # untag images

docker inspect  # To view an image’s labels
```

## X11
```
apt-get update
```

```
# Test
apt-get install x11-apps
xeyes  # to see if x11 forwarding is working

apt-get install mesa-utils
glxinfo  # check if display is working fine for rendering
```


### Build container example
```
docker run \
  --name tandem \
  --ipc=host \
  --gpus all \
  --privileged \
  -p 3751:22 \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \  # unix socket to port display from container to host, not for remote ssh
  -v $HOME/.Xauthority:$docker/.Xauthority \  # authority access for remote containers, for remote ssh
  -v $HOME/work:/home/work/projects \
  -v /mnt/Data/Datasets/dm-vio:/mnt/Data/Datasets/dm-vio \
  -e XAUTHORITY=$home_folder/.Xauthority \
  -e DISPLAY=$DISPLAY \
  -e QT_X11_NO_MITSHM=1 \
  -it pytholic/tandem
```

## Push an image
```
docker login
docker tag <image id> <image name>:tag

# Create repo online, if not then it will create new one automatically.

docker push <image name>:tag

# Example
docker push pytholic/voldor:latest
```

## Execute command inside docker
You can either run with `ssh` or `docker exec`.

### SSH
```
ssh -p 3751 work@0.0.0.0 "ls; pwd;"
```

### Docker exec
```
docker exec -it tandem ls
docker exec -i tandem /bin/bash -c "ls; pwd;"  # multiple commands
```

### Connect to running container
```
docker exec -it <container name> /bin/bash
```

## GPU support
https://www.howtogeek.com/devops/how-to-use-an-nvidia-gpu-with-docker-containers/

Use `nvidia/cuda` in dockerfile or pull `nvcr.io` images.

You also need [nvidia container toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html) on your system.

## Fetch nvidia key
Add in `dockerfile`.
```
RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/3bf863cc.pub
```
