module Commands where

import Data.List (intersperse)

type Command = String

terminal = "konsole -e fish"
graphicalEditor = "emacsclient -c"
browser = "firefox"
fileBrowser = "caja"
mailClient = "mailspring"
dmenu = concat $ intersperse " "
    [ "dmenu_run -b -fn", font
    , "-p",  prompt
    , "-nb", backgroundColor
    , "-nf", foregroundColor
    ]
    where font            = "Terminus"
          prompt          = "Command"
          backgroundColor = "grey10"
          foregroundColor = "snow1"

rofi = concat $ intersperse " "
   [ "rofi", "-combi-modi", "run,ssh,window"
   , "-matching", "fuzzy", "-threads", "4"
   , "-show", "run"
   , "-modi", "run,drun"
   , "-terminal", "urxvt"
   , "-font", "'terminus 12'"
   ]

screenShot = "import -window root -display :0.0 -screen /tmp/screenshot.png"

disableScreenSaver = "xset -dpms s off s noexpose s noblank"
blankScreen        = "sh -c 'sleep 1; xset dpms force standby'"

mediaplayerNextSong = "mpc next"
mediaplayerPrevSong = "mpc prev"

lockscreen = "slock"

documentationViewer = "zeal"
