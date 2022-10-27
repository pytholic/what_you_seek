# Fixes with cli

## Display manager not working
Ubuntu got updated but some nvidia packages didn't. You will get blank screen with a cursor. One solution is to run previous `kernel` and it will work. You can edit `/etc/default/grub` and set `GRUB_HIDDEN_TIMEOUT=0`, `GRUB_TIMEOUT_STYLE=menu`. Then acces grub menu on boot by pressing any key.

Otherwise try the following:

```shell
Go to cli with ctrl + alt + F1 (try F1 to F7)

sudo service gdm3 restart or sudo systemctl restart gdm3
sudo apt --full-upgrade
sudo apt-get --with-new-pkgs upgrade
```

## Wget
```shell
wget --no-check-certificate <url>
```

## Open3d headless
```shell
# http://www.open3d.org/docs/release/compilation.html
# http://www.open3d.org/docs/latest/tutorial/Advanced/headless_rendering.html#possible-issues

# Make sure to install open3d dependencies.

git clone https://github.com/isl-org/Open3D
util/install_deps_ubuntu.sh

# Then build headless version
sudo apt-get install libosmesa6-dev

cd ~/Open3D/
mkdir build && cd build

cmake -DENABLE_HEADLESS_RENDERING=ON \
                 -DBUILD_GUI=OFF \
                 -DUSE_SYSTEM_GLEW=OFF \
                 -DUSE_SYSTEM_GLFW=OFF \
                 ..

make -j$(nproc)
make install-pip-package
```
