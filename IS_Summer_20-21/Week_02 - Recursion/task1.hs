main :: IO()
main = do
    print $ isPalindrome 1 == True
    print $ isPalindrome 6 == True
    print $ isPalindrome 1010 == False
    print $ isPalindrome 505 == True
    print $ isPalindrome 123321 == True
    print $ isPalindrome 654 == False
    print $ isPalindrome 121 == True
    print $ isPalindrome 12 == False
    print $ isPalindrome 120 == False
    print $ isPalindrome 12321 == True
    print $ isPalindrome 1221 == True

{-
1. What is the name of the function? isPalindrome
2. How many arguments does it take? 1
3. What is the data type of the arguments? Int
4. What is the return type? Bool
5. What are the names of the arguments? n
6. When should an error be returned? n < 0
7. How would you solve it on a sheet of paper?
We will use reverse, because n == reverse n
-}

-- pattern matching
-- if-else
-- guards

{-
120
helper 120 0
helper 12 0
helper 1 2
21
-}

rev :: Int -> Int
rev n
 | n < 0 = error "n was negative"
 | otherwise = helper n 0
  where
      helper :: Int -> Int -> Int
      helper leftOver result
       | leftOver < 10 = result * 10 + leftOver
       | otherwise = helper (div leftOver 10) (result * 10 + mod leftOver 10)

isPalindrome :: Int -> Bool
isPalindrome n = n == rev n