module Keys (Keys.getKeys, Keys.modMask) where

import XMonad
import XMonad.Hooks.ManageDocks
import Graphics.X11.ExtraTypes.XF86
import qualified XMonad.StackSet as W
import qualified Data.Map as M
import XMonad.Util.NamedScratchpad
import XMonad.Util.Paste
import Graphics.X11.ExtraTypes.XF86

import Commands
import ScratchPads
import qualified SessionType

modMask = mod4Mask

getKeys sessionType = customKeys sessionType <+> keys def 


customKeys sessionType conf = M.fromList $ concat [ coreKeys conf
                                                  , mediaKeys conf
                                                  , screenKeys conf
                                                  ]

coreKeys XConfig {XMonad.modMask = modm} =
        [ ((modm .|. shiftMask, xK_l), spawn "autorandr -c")
        , ((modm, xK_p), spawn rofi)
        , ((modm, xK_c), spawn rofiCalc)
        , ((modm .|. controlMask, xK_c), spawn clipboardList)
        , ((modm, xK_b), sendMessage ToggleStruts)
        , ((modm, xK_F10), spawn "systemctl suspend")
        , ((modm, xK_0), spawn "/home/will/.bin/color")
        , ((modm .|. shiftMask, xK_q), spawn "mate-session-save --force-logout")
        , ((modm .|. shiftMask, xK_p), spawn graphicalEditor)
        , ((modm .|. shiftMask, xK_b), spawn $ browser ++ " --new-window")
        , ((modm .|. shiftMask, xK_l), spawn lockscreen)
        , ((modm .|. shiftMask, xK_s), spawn $ browser ++ " --new-window https://calendar.google.com/calendar/")
        , ((modm .|. shiftMask, xK_t), spawn $ browser ++ " --new-window https://trello.com/b/pXd5FcRu/to-do")
        , ((modm .|. shiftMask, xK_u), spawn $ fileBrowser ++ " ~")
        , ((modm .|. shiftMask, xK_v), spawn disableScreenSaver)
        , ((modm .|. shiftMask, xK_d), spawn "zeal")
        , ((modm, xK_d), namedScratchpadAction scratchPads "zeal")
        , ((modm, xK_v), spawn blankScreen)
        , ((0, xK_Print), spawn screenShot)
        , ((modm .|. shiftMask, xK_m), spawn mailClient)
        ]

screenKeys XConfig {XMonad.modMask = modm} =
        [ ((modm .|. mask, key), screenWorkspace scr >>=
          flip whenJust (windows . action))
        | (key, scr)     <- zip [xK_w, xK_e, xK_r] [0, 1, 2]
        -- | (key, scr)     <- zip [xK_w, xK_e, xK_r] [1, 0, 2]
        , (action, mask) <- [ (W.view, noModMask) , (W.shift, shiftMask)]]


-- For some reason we need the sleeps to work.
mediaKeys XConfig {XMonad.modMask = modm} =
        [ ((modm, xK_Down), spawn "sleep 0.1 && xdotool key --clearmodifiers XF86AudioLowerVolume")
        , ((modm, xK_Up), spawn "sleep 0.1 && xdotool key --clearmodifiers XF86AudioRaiseVolume")
        , ((modm, xK_Left), spawn "sleep 0.1 && xdotool key --clearmodifiers XF86AudioPrev")
        , ((modm, xK_Right), spawn "sleep 0.1 && xdotool key --clearmodifiers XF86AudioNext")
        ]
