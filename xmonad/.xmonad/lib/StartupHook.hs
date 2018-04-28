module StartupHook (getStartupHook) where

import XMonad
import XMonad.ManageHook (composeAll)
import Data.Foldable

import SessionType
import Commands


getStartupHook sessionType = basicDesktopSetupCommands

basicDesktopSetupCommands :: X ()
basicDesktopSetupCommands = composeAll $ map spawn [ "wmname LG3D"
                                                   , "setxkbmap -layoubt gb"
                                                   , "xmodmap ~/.Xmodmap"
                                                   , "~/.config/polybar/run.sh bar"
                                                   ]
