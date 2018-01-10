import System.Exit
import System.IO

-- import Data.Monoid
-- import qualified Data.Map        as M
-- import Control.Monad (liftM2)
--
-- import Graphics.X11.ExtraTypes.XF86  -- Allow XF86 keys to be bound
--
import XMonad
import XMonad.Util.Run (spawnPipe)
-- import qualified XMonad.StackSet as W
--
-- import XMonad.Actions.SpawnOn
-- import XMonad.Actions.PhysicalScreens
--
import XMonad.Hooks.DynamicLog -- for parsing data to xmobar
import XMonad.Hooks.EwmhDesktops -- Enable EWMH window hints (e.g. fullscreen etc)
import XMonad.Hooks.ManageDocks -- for managing xmobar's position
-- import XMonad.Hooks.ManageHelpers
-- import XMonad.Hooks.SetWMName
-- import XMonad.Hooks.UrgencyHook -- Allows xmonad to handle windows demanding attentions
--
-- import XMonad.Layout.NoBorders -- no borders when fullscreen (good for videos)
-- import XMonad.Layout.IM
-- import XMonad.Layout.SimpleFloat
-- import XMonad.Layout.Grid
-- import XMonad.Layout.Tabbed
import XMonad.Config.Desktop
import XMonad.Config.Gnome
import XMonad.Config.Kde
import XMonad.Config.Xfce

import Colours
import Commands
import Layout
import ManageHook
import StartupHook
import LogHook
import Keys
import SessionType

------------------------------------------------------------------------
-- Main:
------------------------------------------------------------------------
getSessionConfig Gnome   = gnomeConfig
getSessionConfig Kde     = kde4Config
getSessionConfig Xfce    = xfceConfig
getSessionConfig Unknown = desktopConfig

main :: IO ()
main = do
             sessionType <- getSessionType
             let baseConfig = getSessionConfig sessionType
             xmonad $ ewmh        -- EWMH provides EWMH implementation for XMonad
                    $ docks       -- Creates spaces for docks so windows don't overlay them
                    $ baseConfig { manageHook = getManageHook sessionType
                                 , startupHook = getStartupHook sessionType
                                 , layoutHook = getLayoutHook sessionType
                                 , handleEventHook = fullscreenEventHook
                                 , normalBorderColor = lightBlue
                                 , focusedBorderColor = lightPink
                                 , XMonad.terminal = Commands.terminal
                                 , workspaces = ["1","2","3","4","5","6","7","8","9"]
                                 , XMonad.modMask = Keys.modMask
                                 , keys = getKeys sessionType
                                 , logHook = getLogHook sessionType
                                 }
