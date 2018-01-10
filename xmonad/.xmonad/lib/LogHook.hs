module LogHook where

import XMonad
import XMonad.Hooks.DynamicLog

import SessionType


getLogHook :: SessionType -> X ()
getLogHook sessionType = dynamicLogWithPP def
