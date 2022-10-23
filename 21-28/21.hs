-- 21: Insert an element at a given position into a list.

insertAt :: Char -> String -> Int -> String
insertAt ch str pos = left ++ [ch] ++ right 
    where 
        left = take (pos - 1) str
        right = drop (pos - 1) str
