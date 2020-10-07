main ::IO()
main = do
    print $ listPrimeDivisors 1000 --[2, 5]
    print $ listPrimeDivisors 98 --[2, 7]
    return ()

isPrime n = if n < 2 then False else length [x | x <- [2 .. n - 1], mod n x == 0] == 0

listPrimeDivisors :: Int -> [Int]
listPrimeDivisors n = [x | x <- [1 .. n], isPrime x, mod n x == 0]