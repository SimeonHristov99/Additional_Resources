main :: IO()
main = do
    print $ dominates (\x -> x + 1) (\x -> x + 2) [1, 2, 3, 4, 5] -- False
    print $ dominates (\x -> x * 3) (\x -> x + 2) [1, 2, 3, 4, 5] -- True
    return ()

checkElements::[Int] -> [Int] -> Bool
checkElements [] [] = True
checkElements (x:xs) (y:ys) = if x >= y then checkElements xs ys else False

dominates :: (Int -> Int) -> (Int -> Int) -> [Int] -> Bool
dominates f g p = checkElements (map f p) (map g p)

{-
foldr (+) 0 [1, 2, 3]
> 1 + (2 + (3 + 0))

foldr1
> 1 + (2 + 3)
-}

--dominates :: (Int -> Int) -> (Int -> Int) -> [Int] -> Bool
--dominates f g xs = foldl1 (&&) (map (\x -> abs(f x) >= abs(g x)) xs)