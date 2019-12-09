module Day1 where

day1 input = sum $ map total_fuel $ map (read::String->Int) $ lines input

to_fuel mass = (mass `div` 3) - 2

total_fuel mass = sum $ takeWhile (>=0) $ drop 1 $ iterate to_fuel mass
