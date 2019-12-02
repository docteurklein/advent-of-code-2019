module Day1 where

import qualified Data.ByteString.Lazy.Char8 as BSC

day1 input = show $ sum $ map to_fuel $ BSC.lines input

to_fuel mass = (ceiling $ fromIntegral(read mass::Int) / 3) - 2
