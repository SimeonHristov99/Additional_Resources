main :: IO()
main = do
    print $ rev 123
    print $ sumDivs 123
    print $ sumD 123
    print $ mapTwo [1, 2, 3] [7, 8, 9]
    print $ isPrime 123
    print $ isPrime 1
    print $ isPrime 7

rev :: Int -> Int
rev x = read $ reverse $ show x -- ['3', '2', '1'] == "321"

sumDivs :: Int -> Int
sumDivs x = sum $ filter (\ i -> mod x i == 0) [1 .. x - 1]

sumD x = sum [ y | y <- [1 .. x - 1], mod x y == 0]

mapTwo xs ys = [x + y | x <- xs, y <- ys] -- map (+1) xs

isPrime :: Int -> Bool
isPrime n = if n < 2 then False else all (\ i -> mod n i /= 0) [2 .. n - 1]