main :: IO()
main = do
    -- print $ fibRec 110
    print $ fibIter 0 == 0
    print $ fibIter 1 == 1
    print $ fibIter 2 == 1
    print $ fibIter 3 == 2
    print $ fibIter 11 == 89
    print $ fibIter 110 == 43566776258854844738105

fibRec :: Int -> Int
fibRec 0 = 0
fibRec 1 = 1
fibRec i
 | i < 0 = error "n was negative"
 | otherwise = fibRec (i - 1) + fibRec (i - 2)

{-
0 <= 
1 <=
1 <= i
2 <= iNext = (i + iNext)
3
5
8
13
21
34 <=
55 <= i
89 <= n (1) (i + iNext)
144
-}
fibIter :: Integer -> Integer
fibIter i = if i < 0 then error "n was negative" else helper 0 1 i
 where
     helper :: Integer -> Integer -> Integer -> Integer
     helper i _ 0 = i -- wildcard
     helper _ iNext 1 = iNext
     helper i iNext leftOver = helper iNext (i + iNext) (leftOver - 1)