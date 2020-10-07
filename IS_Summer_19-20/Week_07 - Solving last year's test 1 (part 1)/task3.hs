main :: IO()
main = do
    print $ checkNumber 2728 -- (4,15)
    print $ checkNumber 31415 -- (12,2)
    print $ checkNumber 121 -- (2,2)
    return ()

toList :: Int -> [Int]
toList x
 | x < 10 = [x]
 | otherwise = mod x 10 : toList (div x 10)

checkNumber :: Int -> (Int, Int)
checkNumber number = if number < 10 then (number, 0) else helper (reverse (toList number)) 0 0
 where
     helper :: [Int] -> Int -> Int -> (Int, Int)
     helper [] left right = (left, right)
     helper [x] left right = (x + left, right)
     helper (x:y:ys) left right = helper ys (x + left) (y + right)