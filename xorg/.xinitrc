#!/bin/bash
#DEFAULT_SESSION=GNOME

#/bin/bash ~/.xinit/programs.sh
exec startlxde 2>&1 > lxde.log
#case $1 in
#  openbox)
#    /bin/bash ~/.xinit/system.sh
#    exec openbox-session
#    ;;
#  openbox-gnome)
#    exec openbox-gnome-session
#    ;;
#  GNOME|Gnome|gnome)
#    exec gnome-session
#    ;;
#  Xmonad)
#    /bin/bash ~/.xinit/system.sh
#    exec xmonad
#    ;;
#  Cinnamon)
#    exec cinnamon-session
#    ;;
#  *)
#    /bin/bash ~/.xinit/system.sh
#    exec xmonad
#    ;;
#esac
