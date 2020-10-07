main :: IO()
main = do
    print $ foldl (+) 0 [1 .. 10]
    print $ foldr (-) 0 [1 .. 10]
    print $ foldl1 (+) [1 .. 10]
    print $ foldr1 (-) [1 .. 10]
    print $ containingM 100 9
    return ()


-- [ f expr | expr <- lst, p1 .. pk]

containingM :: Int -> Int -> [Int]
containingM n m = [x | x <- [1 .. n], helper x m]
 where
     helper :: Int -> Int -> Bool
     helper leftOver digit
      | leftOver < 10 = leftOver == digit
      | mod leftOver 10 == digit = True
      | otherwise = helper (div leftOver 10) digit



{-
foldr :: Foldable t => (a -> b -> b) -> b -> t a -> b -- Foldable t => Vector || List
foldright (-) b=0 a=[1 .. 10]
(a -> b -> b) -> b -> t a -> b
[1 .. 10]

foldl :: Foldable t => (b -> a -> b) -> b -> t a -> b

-}

f :: [Int] -> Int
f lst = if k < 5 then k else -1
 where
     k :: Int
     k = length lst