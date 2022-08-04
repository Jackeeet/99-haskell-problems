-- 12: Decode a run-length encoded list.
-- Given a run-length code list generated as specidfied in problem 11. 
-- Construct its uncompressed version.
data RLE a = Multiple Int a | Single a 
    deriving (Show)

decodeModified :: [RLE a] -> [a]
decodeModified = concatMap fromRLE
    where
        fromRLE (Single x) = [x]
        fromRLE (Multiple n x) = replicate n x
