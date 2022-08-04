-- 13: Run-length encoding of a list (direct solution)
-- Implement the so-called run-length encoding data compression method directly.
-- I.e. don't explicitly create the sublists containing the duplicates, as in problem 9,
-- but only count them.

data RLE a = Multiple Int a | Single a
    deriving (Show)

encodeDirect :: Eq a => [a] -> [RLE a]
encodeDirect = map convert .customGroup
    where 
        convert (num, item) = case num of
            1 -> Single item
            _ -> Multiple num item

customGroup [] = []
customGroup xs = (num, item) : customGroup rem
    where 
        (num, item, rem) = makeGroup xs

makeGroup l@(x:xs) = (length l - length (rem x l), x, rem x l)
    where
        rem x = dropWhile (== x)
