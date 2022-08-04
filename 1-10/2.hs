-- 2: Find the last but one element of a list.

lastButOne :: [a] -> a
lastButOne [] = error "Empty list"
lastButOne (x:[]) = error "Only one element in list"
lastButOne x = x !! (length x - 2)