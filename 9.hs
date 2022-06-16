-- 9: Pack consecutive duplicates of list elements into sublists. 
-- If a list contains repeated elements they should be placed in separate sublists.
import Data.List

pack :: Eq a => [a] -> [[a]]
pack = group
