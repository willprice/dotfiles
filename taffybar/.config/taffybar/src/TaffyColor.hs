module TaffyColor where

class TaffyColor c where
        toTaffyColor :: c -> (Double, Double, Double, Double) -- (0-1, 0-1, 0-1, 0-1) RGBA tuple

