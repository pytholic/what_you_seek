To run `.sh` scripts on startup and shutdown.

# Startup
Instead of `startup`, I actually ended up doing `login` mode.

## /etc/profile.d
Add/create to `/etc/profile.d`.
Changed permissions.
```
sudo chmod 777 <name of script>
sudo chmod +xname of script>
```

## Startup Application
Add a new entry with the command.

Example to read a file
```
gedit /home/pytholic/temp.txt
```

# Shutdown
It was hard. I ended up creating a custom launcher icon that executes the following bash script.
```
xdg-open /path/to/img
sleep 20
shutdown now

or

gedit /path/to/file
wait
shutdown now
```

## To create launcher:

A desktop launcher is a text file with the .desktop extension, formatted in a specific way. If you place it in the folder .local/share/applications, it will be picked up in the application overview.

Thus, you could create the file ~/.local/share/applications/toggle-keyboard.desktop to launch your script. The contents should look like:

```
[Desktop Entry]
Name=Toggle Keyboard
Comment=Toggle keyboard on or off
Exec=<name or path to your script>
Terminal=false
Type=Application
Icon=<name or path to the icon >
Categories=Utility;
```

# References
https://askubuntu.com/questions/1289453/how-do-you-make-a-button-that-performs-a-specific-command/1289464#1289464
