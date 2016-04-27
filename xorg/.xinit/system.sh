#!/bin/bash
source /etc/X11/xinit/xinitrc.d/30-dbus

/usr/lib/notification-daemon-1.0/notification-daemon &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/systemd/systemd --user &
start-pulseaudio-x11 &

# Start GNOME Keyring
eval "$(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)"
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

# Monitor config
if test "$(xrandr | grep VGA | awk '{ print $2 }')" != "disconnected"; then
  monitors uni
fi


# Blank desktop
#xsetroot
# Turn energy saving off
xset -dpms s off s noexpose s noblank
# Set mouse speed
xset m 1/3 1

# Keyboard config
setxkbmap -layout gb
xmodmap ~/.Xmodmap

# Terminal config
xrdb ~/.Xresources

# Handle Java apps 
wmname LG3D

# Automount disks
udiskie &

# System Tray
trayer --SetDockType true --SetPartialStrut true --edge top --widthtype percent --align right \
       --width 15 --height 18 --tint 0x1A1A1A --transparent true &

# Change temp colour of display according to time
#redshift &

