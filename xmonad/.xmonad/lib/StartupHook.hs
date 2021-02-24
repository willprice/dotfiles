module StartupHook (getStartupHook) where

import XMonad
import XMonad.ManageHook (composeAll)
import Data.Foldable

import SessionType
import Commands


getStartupHook sessionType = basicDesktopSetupCommands

basicDesktopSetupCommands :: X ()
basicDesktopSetupCommands = composeAll $ map spawn [ "wmname LG3D"
                                                   , "setxkbmap -layout gb"
                                                   , "xmodmap ~/.Xmodmap"
                                                   , "picom"
                                                   , "~/.config/polybar/run.sh bar"
                                                   ]
