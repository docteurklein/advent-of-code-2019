module Day1 where

day1 input = sum $ map to_fuel $ lines $ input

to_fuel mass = (floor $ fromIntegral(read mass::Int) / 3) - 2
