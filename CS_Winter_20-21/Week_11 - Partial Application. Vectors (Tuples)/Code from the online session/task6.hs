main :: IO()
main = do
    print $ normalize (4, 2) == (2, 1)
    print $ normalize (8, 4) == (2, 1)
    print $ normalize (2, 4) == (1, 2)

type Rat = (Int, Int)

normalize :: Rat -> Rat
normalize (x, y) = if y == 0 then error "division by 0" else (div x k, div y k)
 where
     k :: Int
     k = gcd x y