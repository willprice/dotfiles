module Solarized (Solarized(..), toHexString, toRgba) where

import Color

data Solarized = Base03  | -- (dark)  Background
                 Base02  | -- (dark)  Background highlights
                 Base01  | -- (dark)  Comments / Secondary content | (light) Optional emphasized content
                 Base00  | -- (light) Body text / Default code / Primary content
                 Base0   | -- (dark)  Body text / Default code / Primary content
                 Base1   | -- (dark)  Optional emphasized content | (light) Comments / Secondary content
                 Base2   | -- (light) Background highlights
                 Base3   | -- (light) Background
                 Yellow  |
                 Orange  |
                 Red     |
                 Magenta | Violet  | Blue    | Cyan    |
                 Green

instance Color Solarized where
  toHexString c = case c of
    Base03  -> "#002b36"
    Base02  -> "#073642"
    Base01  -> "#586e75"
    Base00  -> "#657b83"
    Base0   -> "#839496"
    Base1   -> "#93a1a1"
    Base2   -> "#eee8d5"
    Base3   -> "#fdf6e3"
    Yellow  -> "#b58900"
    Orange  -> "#cb4b16"
    Red     -> "#dc322f"
    Magenta -> "#d33682"
    Violet  -> "#6c71c4"
    Blue    -> "#268bd2"
    Cyan    -> "#2aa198"
    Green   -> "#719e07"

instance Rgba Solarized where
    toRgba c = rgbaToTaffyColor $ solarizedToRgba c

rgbaToTaffyColor :: (Double, Double, Double, Double) -> (Double, Double, Double, Double)
rgbaToTaffyColor (r, g, b, a) = (r/255.0, g/255.0, b/255.0, a/255.0)

solarizedToRgba :: Solarized -> (Double, Double, Double, Double)
solarizedToRgba c = case c of
      Base03  -> (0, 43, 54.0, 255)
      Base02  -> (7, 52, 66, 255)
      Base01  -> (88, 110, 117, 255)
      Base00  -> (101, 123, 131, 255)
      Base0   -> (131, 148, 150, 255)
      Base1   -> (147, 161, 161, 255)
      Base2   -> (238, 232, 213, 255)
      Base3   -> (253, 246, 227, 255)
      Yellow  -> (181, 137, 00, 255)
      Orange  -> (203, 75, 22, 255)
      Red     -> (220, 50, 47, 255)
      Magenta -> (221, 54, 130, 255)
      Violet  -> (108, 113, 196, 255)
      Blue    -> (38, 139, 210, 255)
      Cyan    -> (42, 161, 151, 255)
      Green   -> (113, 158, 7, 255)
