import Data.List

comp :: [Integer] -> [Integer] -> Bool
comp list_a list_b = (sort (map (^2) list_a)) == (sort list_b)