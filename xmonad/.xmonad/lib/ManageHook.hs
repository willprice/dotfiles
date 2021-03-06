module ManageHook (getManageHook) where
-- A ManageHook is a collection of rules to actions that are matched
-- against a new window. For example we have rules that float windows based
-- on their window class (obtained via `xprop | grep WM_CLAS`)
import XMonad
import XMonad.Actions.SpawnOn
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Util.NamedScratchpad
import qualified XMonad.StackSet as W

import Control.Monad

import ScratchPads

getManageHook sessionType = screenRulesManageHook
           <+> manageDocks
           <+> scratchPadsManageHook
           <+> XMonad.manageHook def

scratchPadsManageHook = namedScratchpadManageHook scratchPads

screenRulesManageHook = composeAll . concat $
                [ [isFullscreen --> doFullFloat]
                , [isInProperty prop value --> doFloat | (prop, value) <- arbitraryRulesToFloat ]
                , [className =? cls --> doIgnore | cls <- windowClassesToIgnore ]
                , [className =? cls --> doFloat | cls <- windowClassesToFloat ]
                , [className =? cls --> viewShift desktop | (cls, desktop) <- windowClassesToShift]
                , [className =? "zeal" --> doRectFloat (W.RationalRect 0 0 0.9 0.9)]
                ]
                where viewShift = doF . liftM2 (.) W.greedyView W.shift

windowClassesToFloat = [ "xmessage"
                       , "yakuake"
                       , "pavucontrol"
                       , "zenity"
                       , "feh"
                       , "klipper"
                       , "insync.py"
                       , "pyqt"
                       , "albert"
                       , "zeal"
                       ]
windowClassesToIgnore = [
                        ]

windowClassesToShift = [ ("VirtualBox", "5:VBox")
                       , ("Anki", "4:Notes")
                       ]
                       -- TODO: Fix (check dia toolbox window)
arbitraryRulesToFloat  = [ ("WM_WINDOW_ROLE", "toolbox_window") ]
