-- 8: Eliminate consecutive duplicates of list elements.
import Data.List

compress :: Eq a => [a] -> [a]
compress = map head . group
