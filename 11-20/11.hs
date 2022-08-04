-- 11: Modified run-length encoding.
-- Modify the result of problem 10 in such a way that if an element has no duplicates
-- it is simply copied into the result list.
-- Only elements with duplicates are transferred as (N E) lists.
import Data.List

data RLE a = Multiple Int a | Single a 
    deriving (Show)

encode :: Eq a => [a] -> [(Int, a)]
encode = map (\s -> (length s, head s)) . group

encodeModified :: Eq a => [a] -> [RLE a]
encodeModified = map parseTuple . encode
    where 
        parseTuple (1, x) = Single x
        parseTuple (n, x) = Multiple n x

{- this is kind of convoluted
encodeModified :: Eq a => [a] -> [RLE a]
encodeModified = toRLEList . group

toRLEList :: [[a]] -> [RLE a]
toRLEList = map toRLE
    where toRLE x
            | length x == 1 = Single item
            | otherwise = Multiple (length x) item
            where item = head x
-}
