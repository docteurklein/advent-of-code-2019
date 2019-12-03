import Day1

import Network.Wreq
import Control.Lens
import System.Environment
import Data.ByteString.UTF8 (fromString)
import Data.ByteString.Lazy.UTF8 (toString)

main = do
    cookie <- getEnv "COOKIE"
    let opts = defaults & header "Cookie" .~ [fromString cookie]
    r <- getWith opts "https://adventofcode.com/2019/day/1/input"
    let input = r ^. responseBody
    putStrLn $ show $ day1 $ toString input
