module ScratchPads (scratchPads) where

import XMonad
import XMonad.Util.NamedScratchpad
import qualified XMonad.StackSet as W

scratchPads :: [NamedScratchpad]
scratchPads = [NS "zeal" "zeal" (className =? "Zeal") (customFloating $ W.RationalRect (1/6) (1/6) (2/3) (2/3))]
