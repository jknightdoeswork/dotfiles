# Fix sleep issues
https://askubuntu.com/questions/1029474/ubuntu-18-04-dell-xps13-9370-no-longer-suspends-on-lid-close

/etc/default/grub

GRUB_CMDLINE_LINUX_DEFAULT="mem_sleep_default=deep"

```
sh insert_memsleepdefault_into_grub.sh
```

# Disable emoji hotkey in
```
ibus-setup
```

# Swap pgup/home
Swap Home/End and PgUp/PgDown:

/usr/share/X11/xkb/symbols/pc

```
sh keyswapper.sh
```

# Suspend bluetooth during sleep
put suspend_bluetooth in /lib/systemd/system-sleep/ and make executable


# Workspaces
right click on app in panel, preferences -> disable super+num to switch to app

# Keyboard
- in keyboard options set swap alt and control
- set super+num to go to workspace
- set shift+super+num to move window to workspace
- set maximize to super+up
- set unmaximize to super+down
- set fullscreen to super+enter

# Terminal
- install gogh
- select 118
- set new tab to cntrl+t
- set switch tabs to cntrl+[ ]
- set 
