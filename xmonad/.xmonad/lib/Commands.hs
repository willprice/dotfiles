module Commands where

type Command = String

terminal = "urxvt -e fish"
graphicalEditor = "emacsclient -c"
browser = "chromium"
fileBrowser = "nautilus"
mailClient = "nylas"
dmenu = concat [ "dmenu_run -b -fn", font
               , "-p",  prompt
               , "-nb", backgroundColor
               , "-nf", foregroundColor
               ]
    where font            = "-gohu-gohufont-medium-r-normal--11-80-100-100-c-60-iso8859-1"
          prompt          = "Command"
          backgroundColor = "grey10"
          foregroundColor = "snow1"
screenShot = "import -window root -display :0.0 -screen /tmp/screenshot.png"

disableScreenSaver = "xset -dpms s off s noexpose s noblank"
blankScreen        = "sh -c 'sleep 1; xset dpms force standby'"

mediaplayerNextSong = "mpc next"
mediaplayerPrevSong = "mpc prev"

lockscreen = "slock"
