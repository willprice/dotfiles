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

getKeys sessionType = customKeys sessionType <+> keys defaultConfig


customKeys sessionType conf = M.fromList $ concat [ coreKeys conf
                                                  , mediaKeys conf
                                                  , screenKeys conf
                                                  ]

coreKeys XConfig {XMonad.modMask = modm} =
        [ ((modm .|. shiftMask, xK_l), spawn "autorandr -c")
        , ((modm, xK_p), spawn rofi)
        , ((modm, xK_b), sendMessage ToggleStruts)
        , ((modm, xK_F10), spawn "systemctl suspend")
        , ((modm, xK_0), spawn "/home/will/.bin/color")
        , ((modm .|. shiftMask, xK_q), spawn "mate-session-save --force-logout")
        , ((modm .|. shiftMask, xK_p), spawn graphicalEditor)
        , ((modm .|. shiftMask, xK_b), spawn $ browser ++ " --new-window")
        , ((modm .|. shiftMask, xK_l), spawn lockscreen)
        , ((modm .|. shiftMask, xK_s), spawn $ browser ++ " --new-window https://calendar.google.com/calendar/")
        , ((modm .|. shiftMask, xK_t), spawn $ browser ++ " --new-window https://trello.com/b/pXd6FcRu/to-do")
        , ((modm .|. shiftMask, xK_u), spawn $ fileBrowser ++ " ~")
        , ((modm .|. shiftMask, xK_v), spawn disableScreenSaver)
        , ((modm .|. shiftMask, xK_d), spawn "/opt/google/chrome/google-chrome --profile-directory=Default --app-id=flndonddgbgofbmbnpodicicaoanohed")
        , ((modm, xK_v), spawn blankScreen)
        , ((modm .|. shiftMask, xK_minus), spawn "xdotool key XF86AudioLowerVolume")
        , ((modm .|. shiftMask, xK_equal), spawn $ "xdotool key XF86AudioRaiseVolume")

        , ((0, xK_Print), spawn screenShot)
        , ((modm .|. shiftMask, xK_m), spawn mailClient)
        , ((modm, xK_Left), spawn "export DISPLAY=':0'; xdotool key XF86AudioNext")
        , ((modm, xK_Right), spawn "xdotool key XF86AudioPrev")
        , ((modm, xK_Down), spawn "xdotool key XF86AudioMute")
        ]

screenKeys XConfig {XMonad.modMask = modm} = 
        [ ((modm .|. mask, key), screenWorkspace scr >>= 
          flip whenJust (windows . action))
        | (key, scr)     <- zip [xK_w, xK_e, xK_r] [0, 2, 1] -- Screens 1 and 2 are flipped in ordering. - not at the moment they're not
        , (action, mask) <- [ (W.view, noModMask) , (W.shift, shiftMask)]]


mediaKeys XConfig {XMonad.modMask = modm} =
        [ ((modm .|. shiftMask, xK_comma), spawn mediaplayerPrevSong)
        , ((modm .|. shiftMask, xK_period), spawn mediaplayerNextSong)
        ]
