main :: IO()
main = do
    print $ mIdentity "Hello" -- "Hello"
    print $ (myCompose (\x -> x - 5) (\y -> y + 25)) 5 -- 25
    print $ (myNegate (\x -> mod x 2 == 0)) 2 -- False
    print $ (myCurry (\a b -> 10 * a + b) 5) 10 -- 60
    return ()

mIdentity :: Show a => (a -> a)
mIdentity = (\x -> x)

myCompose :: (Int -> Int) -> (Int -> Int) -> (Int -> Int)
myCompose = (\f g -> (g . f))

myNegate :: (Int -> Bool) -> (Int -> Bool)
myNegate = (\f x -> not (f x))

myCurry :: (Int -> Int -> Int) -> Int -> (Int -> Int)
myCurry = (\f x -> f x)