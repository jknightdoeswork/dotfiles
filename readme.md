Initial Setup 

Fix sleep issues
/etc/default/grub
add
GRUB_CMDLINE_LINUX_DEFAULT="mem_sleep_default=deep"

```
sh insert_memsleepdefault_into_grub.sh
```

Disable emoji hotkey in
```
ibus-setup
```

Swap Home/End and PgUp/PgDown:
in
/usr/share/X11/xkb/symbols/pc
```
sh keyswapper.sh
```

put suspend_bluetooth in /lib/systemd/system-sleep/ and make executable
