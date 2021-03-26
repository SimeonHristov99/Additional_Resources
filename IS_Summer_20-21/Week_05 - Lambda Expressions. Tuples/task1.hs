import Data.List

main :: IO()
main = do
    print $ (\ x -> show x) 10
    print $ (myLambda (\ x -> x)) 5 == 5
    print $ (myLambda (\ x -> x)) "Hello" == "Hello"
    print $ (myLambda (+1)) 5 == 6
    print $ (negatePred (\x -> mod x 2 == 0)) 2 == False
    print $ (compose (\x -> x - 5) (\y -> y + 25)) 5 == 25
    print $ (compose group sort) "Hello World" == [" ","H","W","d","e","lll","oo","r"]
    print $ (partiallyApply (\x y -> 10 * x + y) 5) 10 == 60
    print $ (\ x y z -> x y z) (\ x y -> x + y) 5 6
    print $ (\ x y -> x + y) 5 6
    print $ (\ x -> x + 10) 5
    print $ helper [1, 2, 3]

{-
(\ x y z -> x y z) (\ x y -> x + y) 5 6

(\ 5 -> 5 + 10)
(\ 5 6 -> 5 + 6) 5 6
(\ (\ x y -> x + y) 5 6 -> 11)   => 11
(\ 5 6 -> 5 + 6)  
> 11
-}

-- helper (x:xs) -- x = 1, xs = [2, 3]
--  | xs == []

-- []
-- helper (x:xs) -- x = ???
--  | xs == [] 

-- [1] -- 1 : []
-- helper []
-- helper (x:xs) -- x = 1, xs = []
--  | xs == []
--  | otherwise = helper xs

myLambda :: (a -> b) -> (a -> b)
myLambda f = f -- (\ x -> f x)

negatePred :: (a -> Bool) -> (a -> Bool)
negatePred p = not . p -- (\ x -> not $ p x)

compose :: (b -> c) -> (a -> b) -> (a -> c)
compose f g = f . g -- (\ x -> f (g x))
{-
compose (\x -> x - 5) (\y -> y + 25)
> (\ 5 -> ((\x -> x - 5) ((\5 -> y + 25) 5)))
> (\y -> y + 25) 5
>  (\x -> x - 5) 30
> 25
-}
{-
(compose group sort) "Hello World"
sort "Hello World"
> 56 - 96 56 = 'A', 96 - 'Z'
> group " HWdellloor"
> [" ", "H", "W", "d", "e", "lll", "oo", "r"]
-}

partiallyApply :: (a -> b -> c) -> a -> (b -> c)
partiallyApply f x = f x -- (\ y -> f x y)
{-
(partiallyApply f=(\x y -> 10 * x + y) x=5) y=10
> (\ y -> f x y) y=10
> (\ 10 -> (\5 10 -> 10 * 5 + 10) 5 10)
> 60
-}