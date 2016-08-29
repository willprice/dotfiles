import System.Taffybar

import System.Taffybar.Systray
import System.Taffybar.Pager
import System.Taffybar.TaffyPager
import System.Taffybar.SimpleClock
import System.Taffybar.FreedesktopNotifications
import System.Taffybar.Weather
import System.Taffybar.MPRIS2
import System.Taffybar.MPRIS
import System.Taffybar.Battery
import System.Taffybar.DiskIOMonitor
import System.Taffybar.FSMonitor
import System.Taffybar.NetMonitor

import System.Taffybar.Widgets.PollingBar
import System.Taffybar.Widgets.PollingGraph

import System.Information.Memory
import System.Information.CPU

import Color
import Solarized

pad = wrap " " " "

memCallback = do
  mi <- parseMeminfo
  return [memoryUsedRatio mi]

cpuCallback = do
  (userLoad, systemLoad, totalLoad) <- cpuLoad
  return [totalLoad, systemLoad]

main = do
  let memCfg = defaultGraphConfig { graphDataColors = [ toRgba Yellow ]
                                  , graphBackgroundColor = toRgb Base03
                                  , graphLabel = Just "mem"
                                  , graphDirection = RIGHT_TO_LEFT
                                  }
      cpuCfg = defaultGraphConfig { graphDataColors = [ toRgba Red
                                                      , toRgba Blue
                                                      ]
                                  , graphBackgroundColor = toRgb Base03
                                  , graphLabel = Just "cpu"
                                  , graphDirection = RIGHT_TO_LEFT
                                  }
      batteryCfg = defaultBatteryConfig { barBackgroundColor = const $ toRgb Base03
                                        , barColor = colorFn
                                        }
          where
              colorFn percentage
                | percentage < 0.1 = toRgb Red
                | percentage < 0.8 = toRgb Base0
                | otherwise        = toRgb Green

      diskCfg = defaultGraphConfig { graphDataColors = [ toRgba Cyan
                                                       , toRgba Magenta ]
                                   , graphBackgroundColor = toRgb Base03
                                   , graphLabel = Just "ssd"
                                   , graphDirection = RIGHT_TO_LEFT
                                   }


  let pager       = taffyPagerNew defaultPagerConfig { activeLayout = colorize (toHexString Violet) "" . escape
                                                     , activeWorkspace = colorize (toHexString Yellow) "" . wrap "[" "]" . escape
                                                     , visibleWorkspace = colorize (toHexString Cyan) "" . wrap "(" ")" . escape
                                                     , emptyWorkspace = colorize (toHexString Base01) "" . escape
                                                     , hiddenWorkspace = colorize (toHexString Magenta) "" . escape
                                                     , urgentWorkspace = colorize (toHexString Red) "" . escape
                                                     , widgetSep = colorize (toHexString Blue) "" " | "
                                                     , activeWindow = pad . escape . shorten 50
                                                     }
      note        = notifyAreaNew defaultNotificationConfig

      mpris2      = mpris2New
      fs          = fsMonitorNew 30 ["/"]
      battery     = batteryBarNew batteryCfg 2
      cpu         = pollingGraphNew cpuCfg 0.5 cpuCallback
      mem         = pollingGraphNew memCfg 0.5 memCallback
      disk        = dioMonitorNew diskCfg 0.5 "sda"
      tray        = systrayNew
      wifi        = netMonitorNew 0.5 "wlp4s0"
      clock       = textClockNew Nothing  ("<span fgcolor='" ++ (toHexString Yellow) ++ "'>%a %b %_d %H:%M</span>") 1

  defaultTaffybar defaultTaffybarConfig { startWidgets = [ pager, note ]
                                        , endWidgets = reverse [ mpris2, wifi, fs, battery, disk, cpu, mem, tray, clock ]
                                        }
