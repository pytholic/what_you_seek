## Fixes with cli

### Display manager not working
Ubuntu got updated but some nvidia packages didn't. You will get blank screen with a cursor. One solution is to run previous `kernel` and it will work. You can edit `/etc/default/grub` and set `GRUB_HIDDEN_TIMEOUT=0`, `GRUB_TIMEOUT_STYLE=menu`. Then acces grub menu on boot by pressing any key.

Otherwise try the following:

```shell
Go to cli with ctrl + alt + F1 (try F1 to F7)

sudo service gdm3 restart or sudo systemctl restart gdm3
sudo apt --full-upgrade
sudo apt-get --with-new-pkgs upgrade
```
