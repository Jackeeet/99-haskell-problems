-- 19: Rotate a list N places to the left.

rotate :: [a] -> Int -> [a]
rotate xs n = drop cnt xs ++ take cnt xs
    where cnt = if n > 0 then n else n + length xs
