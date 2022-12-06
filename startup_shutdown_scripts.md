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
``
