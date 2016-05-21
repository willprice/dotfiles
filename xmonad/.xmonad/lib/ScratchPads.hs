module ScratchPads (scratchPads) where

import XMonad
import XMonad.Util.NamedScratchpad

scratchPads :: [NamedScratchpad]
scratchPads = [ NS "zeal" "zeal" (className =? "Zeal") defaultFloating
              ]
