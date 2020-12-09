main :: IO()
main = do
    print $ rev 123
    print $ isPrime 6

rev :: Int -> Int
rev n = read $ reverse $ show n

isPrime :: Int -> Bool
isPrime n = if n < 2 then False else all (\ i -> mod n i == 0) [2 .. n - 1]