module XmobarConfig (xmobarConfig) where

import XMonad.Hooks.DynamicLog
import Colours

wrapInPipes = wrap "|" "|"

xmobarConfig :: PP
xmobarConfig = defaultPP { ppCurrent         = xmobarColor "white" darkGrey . wrapInPipes
                         , ppTitle           = xmobarColor lightBlue "" . shorten 120
                         , ppSep             = " | "
                         , ppHidden          = xmobarColor lightBlue ""
                         , ppVisible         = xmobarColor lightPink "" . wrapInPipes
                         , ppHiddenNoWindows = xmobarColor steelBlue ""
                         }

