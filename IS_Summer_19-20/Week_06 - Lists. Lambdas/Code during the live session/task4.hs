main :: IO()
main = do
    print $ isArithmetic [1, 2, 3, 4] -- True
    return ()

isArithmetic :: [Int] -> Bool
isArithmetic xs = if length xs < 3 then True else helper (xs!!1 - xs!!0) (tail xs)
 where
     helper :: Int -> [Int] -> Bool
     helper _ [] = True
     helper _ [x] = True
     helper d leftOver
      | leftOver!!1 - leftOver!!0 == d = helper d (tail leftOver)
      | otherwise = False

{-
[1, 2, 3, 4]
> helper 1 [2, 3, 4]
> 3 - 2 = 1 = 1 => 
-}