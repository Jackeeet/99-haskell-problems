-- 1: Find the last element of a list.

lastElem :: [a] -> a
lastElem [] = error "Empty list"
lastElem (x:[]) = x
lastElem (_:x) = lastElem x  
