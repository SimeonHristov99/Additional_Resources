main :: IO()
main = do
	print $ factorize 2 == [2]
	print $ factorize 13 == [13]
	print $ factorize 152 == [2,2,2,19]
	print $ factorize 123 == [3,41]
	print $ factorize 1000000000000000000 == [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]

isPrime :: Int -> Bool
isPrime n = [x | x <- [1..n], mod n x == 0] == [1, n]


factorize :: Int -> [Int]
factorize x = helper x 2
 where
  helper :: Int -> Int -> [Int]
  helper 1 _ = []
  helper x d
   | mod x d == 0 = if isPrime d then d : helper (div x d) d else helper x (d + 1)
   | otherwise = helper x (d + 1)

{-
factorize :: Int -> [Int]
factorize n = helper 2 n
 where
  helper :: Int -> Int -> [Int]
  helper currentDivisor currNumber
   | isPrime currNumber = [currNumber]
   | mod currNumber currentDivisor == 0 = [currentDivisor] ++ helper currentDivisor (div currNumber currentDivisor)
   | otherwise = helper (currentDivisor + 1) currNumber
-}
