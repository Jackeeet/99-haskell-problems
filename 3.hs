-- 3: Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt x n 
    | n < 1 = error "Invalid index"
    | length x < n = error "Not enough elements"
    | otherwise = last (take n x)