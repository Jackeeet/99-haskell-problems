-- 23: Extract a given number of randomly selected elements from a list.

import System.Random

rndSelect :: [a] -> Int -> [a]
rndSelect xs n = do
    g <- newStdGen
    let indices = take n (randomRs (0, length xs - 1), g)
    [x | (i, x) <- zip [0..] xs, i `elem` indices]
