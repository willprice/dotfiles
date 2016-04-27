module SessionType (SessionType(Gnome,Kde,Xfce,Unknown), getSessionType) where

import System.Posix.Env
import Data.Maybe
import Control.Monad

data SessionType = Gnome
                 | Kde
                 | Xfce
                 | Unknown

getSessionType ::  IO SessionType
getSessionType = getEnv "DESKTOP_SESSION" >>= return . sessionIdentifierToDesktopType

sessionIdentifierToDesktopType ::  Maybe [Char] -> SessionType
sessionIdentifierToDesktopType (Just identifier) = case identifier of
                                                       "gnome" -> Gnome
                                                       "xmonad-gnome" -> Gnome
                                                       "kde" -> Kde
                                                       "kde-plasma" -> Kde
                                                       "plasma" -> Kde
                                                       "xfce" -> Xfce
                                                       _ -> Unknown
sessionIdentifierToDesktopType Nothing = Unknown
