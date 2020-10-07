main :: IO()
main = do
    print $ factorize 152 -- [2, 2, 2,19]
    print $ factorize 123 -- [3, 41]
    print $ factorize 13 -- [13]
    return ()

isPrime x = if x < 2 then False else length [ y | y <- [2 .. x - 1], mod x y == 0] == 0

factorize :: Int -> [Int]
factorize x = if x <= 1 then error "Invalid Input!" else helper x 2
 where
     helper :: Int -> Int -> [Int]
     helper leftOver currentNumber
      | currentNumber > leftOver = []
      | isPrime currentNumber && mod leftOver currentNumber == 0 = currentNumber : helper (div leftOver currentNumber) currentNumber
      | otherwise = helper leftOver (currentNumber + 1)