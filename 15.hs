-- 15: Replicate the elements of a list a given number of times.

repli :: [a] -> Int -> [a]
repli (x:xs) n = concat (replicate n x) : concat $ repli xs (n - 1)
