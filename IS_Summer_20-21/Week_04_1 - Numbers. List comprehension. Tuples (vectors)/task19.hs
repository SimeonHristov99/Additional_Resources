main :: IO()
main = do
    print $ normalize (4, 2) -- (2, 1)
    print $ normalize (8, 4) -- (2, 1)
    print $ normalize (2, 4) -- (1, 2)
    return ()

myGcd :: Int -> Int -> Int
myGcd a b
 | a == 0 = b
 | b == 0 = a
 | otherwise = myGcd b (mod a b)

type Rat = (Int, Int)

normalize :: Rat -> Rat
normalize (x, y) = (div x k, div y k)
 where
     k = myGcd x y