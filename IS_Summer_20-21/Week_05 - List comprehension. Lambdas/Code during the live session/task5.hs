main :: IO()
main = do
    print $ myIdentity 5 -- 5
    print $ myIdentity "Hello" -- "Hello"
    print $ (myCompose (\x -> x - 5) (\y -> y + 25)) 5 -- 25
    print $ (myNegate (\x -> mod x 2 == 0)) 2 -- False
    print $ (myCurry (\a b -> 10 * a + b) 5) 10 -- 60

{-
(myCurry (\a b -> 10 * a + b) 5) 10
> myCurry (\a b -> 10 * a + b) 5
> (\10 -> (\a b -> 10 * a + b) 5 10)
> (\5 10 -> 10 * 5 + 10)
> 60
-}

myCurry :: (Num a) => (a -> a -> a) -> a -> (a -> a)
myCurry f x = (\f x y -> f x y) -- 

myIdentity :: (a -> a)
myIdentity = (\x -> x)

myCompose :: (Num a) => (a -> a) -> (a -> a) -> (a -> a)
myCompose = (\f g -> f . g)

{-
(myNegate (\x -> mod x 2 == 0)) 2
> (\ (\x -> mod x 2 == 0) 2)
> (\2 -> mod 2 2 == 0) => True
> not True => False
-}

myNegate :: (Eq a, Num a) => (a -> Bool) -> (a -> Bool)
myNegate = (\ f x -> not (f x))


{-
myCompose (\x -> x - 5) (\y -> y + 25)
myCompose f g = f . g
myCompose (\x -> x - 5) (\y -> y + 25)
> (\(\5 -> 5 + 25) -> (\5 -> 5 + 25) - 5)
> \ 30 -> 30 - 5 >> 25
-}