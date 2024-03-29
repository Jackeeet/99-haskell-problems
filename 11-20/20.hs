-- 20: Remove the K'th element from a list.

removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = (xs !! (n - 1), take (n-1) xs ++ drop n xs)
