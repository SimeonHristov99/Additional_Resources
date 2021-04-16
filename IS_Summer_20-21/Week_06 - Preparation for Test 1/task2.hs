main :: IO()
main = do
    -- print $ abs (-5)
    print $ foldr (+) 0 [1, 2, 3]
    print $ foldl (*) 1 [1, 2, 3]
    print $ foldl1 (*) [1]
    print $ foldr1 (*) [1, 2, 3]
    print $ dominates (\x -> x + 1) (\x -> x + 2) [] == False
    print $ dominates (\x -> x + 1) (\x -> x + 2) [1, 2, 3, 4, 5] == False
    print $ dominates (\x -> x * 3) (\x -> x + 2) [1, 2, 3, 4, 5] == True
    print $ (myLambda (\ x -> show x)) 1
    print $ (myLambda (\ x -> x + 1)) 1

-- T a;

myLambda :: (a -> b) -> (a -> b)
myLambda f = (\ x -> f x)

dominates :: (Num a, Ord a) => (a -> a) -> (a -> a) -> [a] -> Bool
dominates _ _ [] = False
dominates f g xs = foldl1 (&&) $ map (\ x -> (abs $ f x) >= (abs $ g x)) xs

-- all (\ x -> (abs $ f x) >= (abs $ g x)) xs
-- foldr1 (&&) [True,True,True,True,True]
-- True && True => True

{-
foldr (+) 0 [1, 2, 3]
3 + 0 => 3
2 + 3 => 5
1 + 5 => 6

foldl (*) 1 [1, 2, 3]
1 * 1 => 1
1 * 2 => 2
2 * 3 => 6

foldl1 (*) [1, 2, 3]
1 * 2 => 2
2 * 3 => 6

foldr1 (*) [1, 2, 3]
2 * 3 => 6
1 * 6 => 6
-}