-- 17: Split a list into two parts; the length of the first part is given.
-- Do not use any predefined predicates.

split :: [a] -> Int -> ([a], [a])
split xs n 
    | n >= 0    = (before xs n, after xs n) 
    | otherwise = error "Negative argument"

-- todo implement this with one pass instead of two

before [] _ = []
before (x:xs) n
    | n > 0     = x : before xs (n - 1)
    | otherwise = []

after [] _ = []
after (x:xs) n 
    | n > 0     = after xs (n - 1)
    | n == 0    = x:xs 
    | otherwise = xs
