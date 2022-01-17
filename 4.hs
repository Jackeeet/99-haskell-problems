-- 4: Find the number of elements of a list.

listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = listLength xs + 1