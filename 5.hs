-- 5: Reverse a list.

listReverse :: [a] -> [a]
listReverse [] = []
listReverse (x:xs) = (listReverse xs)++[x]