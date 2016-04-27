module LogHook where

import XMonad.Hooks.DynamicLog


import XMonad

import SessionType
import XmobarConfig


getLogHook :: SessionType -> X ()
getLogHook sessionType = dynamicLogWithPP xmobarConfig
