main :: IO()
main = do
    print $ powRec 2 5 == 32
    print $ powRec 15 3 == 3375
    print $ powIter 2 5 == 32
    print $ powIter 15 3 == 3375
    --print $ powRec 2 0 == 1 -- should return an error

{-
1. What is the name of the function? powRec
2. How many arguments does it take? 
3. What is the data type of the arguments? 
4. What is the return type? 
5. What are the names of the arguments?
6. When should an error be returned? 
7. How would you solve it on a sheet of paper?
-}
powIter :: Double -> Int -> Double
powIter x n
 | n < 1 = error "n was not positive"
 | otherwise = helper n x
  where
      helper :: Int -> Double -> Double
      helper 1 result = result
      helper leftOver result = helper (leftOver - 1) (result * x)

powRec :: Double -> Int -> Double
powRec x 1 = x
powRec x n
 | n < 1 = error "n was not positive"
 | otherwise = x * powRec x (n - 1)