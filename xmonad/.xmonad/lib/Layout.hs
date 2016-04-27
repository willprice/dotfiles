module Layout where

import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.ManageDocks

getLayoutHook sessionType = smartBorders . avoidStruts $
                    tiled ||| smartBorders (Mirror tiled) ||| noBorders Full
  where
     tiled = Tall defaultNumberOfWindowsInMasterPane
                  screenIncrementProportion
                  defaultMasterPaneProportion
     defaultNumberOfWindowsInMasterPane = 1
     defaultMasterPaneProportion        = 0.55
     screenIncrementProportion          = 1/25

