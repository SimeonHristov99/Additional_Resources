main :: IO()
main = do
    print $ sumRats (2, 5) (5, 2) -- (29, 10)
    print $ sumRats (52, 123) (96, 14) -- (6268, 861)
    print $ sumRats (2, 5) (3, 5) -- (1, 1)

    print $ multiplyRats (2, 5) (5, 2) -- (1, 1)
    print $ multiplyRats (52, 123) (96, 14) -- (832, 287)
    print $ multiplyRats (2, 5) (3, 5) -- (6, 25)

    print $ divideRats (2, 5) (5, 2) -- (4, 25)
    print $ divideRats (52, 123) (96, 14) -- (91, 1476)
    print $ divideRats (2, 5) (3, 5) -- (2, 3)

    print $ areEqual (2, 5) (5, 2) -- False
    print $ areEqual (52, 123) (52 * 3, 123 * 3) -- True
    print $ areEqual (2, 6) (5, 15) -- False
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

sumRats :: Rat -> Rat -> Rat
sumRats (x1, x2) (y1, y2) = normalize(x1 * y2 + x2 * y1, x2 * y2)

multiplyRats :: Rat -> Rat -> Rat
multiplyRats (x1, x2) (y1, y2) = normalize(x1 * y1, x2 * y2)

divideRats :: Rat -> Rat -> Rat
divideRats r1 (0, y2) = error "Division by zero."
divideRats r1 (y1, y2) = multiplyRats r1 (y2, y1)

areEqual :: Rat -> Rat -> Bool
areEqual r1 r2 = helper (normalize r1) (normalize r2)
 where
     helper :: Rat -> Rat -> Bool
     helper (x1, x2) (y1, y2) = x1 == y1 && x2 == y2