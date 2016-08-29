module Color (Color, toHexString, Rgba, toRgba, toRgb) where

class Color c where
  toHexString :: c -> String

class Rgba c where
  toRgba :: c -> (Double, Double, Double, Double) -- (0-1, 0-1, 0-1, 0-1) RGBA tuple
  toRgb :: c -> (Double, Double, Double)
  toRgb = rgbaToRgb . toRgba

rgbaToRgb (r, g, b, a) = (r, g, b)
