module Keys (Keys.getKeys, Keys.modMask) where

import XMonad
import XMonad.Hooks.ManageDocks
import Graphics.X11.ExtraTypes.XF86
import qualified Data.Map as M
import XMonad.Util.NamedScratchpad

import Commands
import ScratchPads
import qualified SessionType

modMask = mod4Mask

getKeys sessionType = keys defaultConfig <+> customKeys sessionType


customKeys sessionType conf = M.fromList $ concat [ coreKeys conf
                                                  , mediaKeys conf
                                                  , xf86MediaKeys sessionType conf
                                                  ]

coreKeys XConfig {XMonad.modMask = modm} =
        [ ((modm .|. shiftMask, xK_l), spawn "/home/will/.bin/monitortoggle")
        , ((modm, xK_p), spawn dmenu)
        , ((modm, xK_b), sendMessage ToggleStruts)
        , ((modm, xK_F10), spawn "systemctl suspend")
        , ((modm, xK_0), spawn "/home/will/.bin/color")
        , ((modm .|. shiftMask, xK_q), spawn "mate-session-save --force-logout")
        , ((modm .|. shiftMask, xK_p), spawn graphicalEditor)
        , ((modm .|. shiftMask, xK_b), spawn browser)
        , ((modm .|. shiftMask, xK_u), spawn fileBrowser)
        , ((modm .|. shiftMask, xK_v), spawn disableScreenSaver)
        , ((modm .|. shiftMask, xK_d), namedScratchpadAction scratchPads "zeal")
        , ((modm, xK_v), spawn blankScreen)
        , ((modm .|. shiftMask, xK_minus), spawn "/home/will/.bin/pulsevolcontrol down")
        , ((modm .|. shiftMask, xK_equal), spawn "/home/will/.bin/pulsevolcontrol up")
        , ((0, xK_Print), spawn screenShot)
        , ((modm .|. shiftMask, xK_m), spawn mailClient)
        ]

mediaKeys XConfig {XMonad.modMask = modm} =
        [ ((modm .|. shiftMask, xK_comma), spawn mediaplayerPrevSong)
        , ((modm .|. shiftMask, xK_period), spawn mediaplayerNextSong)
        ]

xf86MediaKeys SessionType.Unknown _ = [ ((-1, xF86XK_AudioPlay), spawn "mpc toggle")
                                    , ((0, xF86XK_AudioNext), spawn mediaplayerNextSong)
                                    , ((0, xF86XK_AudioPrev), spawn mediaplayerPrevSong)
                                    , ((0, xF86XK_AudioLowerVolume), spawn "/home/will/.bin/pulsevolcontrol down")
                                    , ((0, xF86XK_AudioRaiseVolume), spawn "/home/will/.bin/pulsevolcontrol up")
                                    , ((0, xF86XK_AudioMute), spawn "/home/will/.bin/pulsevolcontrol toggle")
                                    ]
xf86MediaKeys _ _ = []
