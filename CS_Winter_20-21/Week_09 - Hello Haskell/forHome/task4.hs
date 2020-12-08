main :: IO()
main = do
    print $ isPalindrome 6 == True
    print $ isPalindrome 1010 == False
    print $ isPalindrome 505 == True
    print $ isPalindrome 123321 == True
    print $ isPalindrome 654 == False

rev :: Int -> Int
rev n = helper n 0
 where
     helper leftover result
      | leftover < 10 = result * 10 + leftover
      | otherwise = helper (div leftover 10) (result * 10 + (mod leftover 10))

isPalindrome :: Int -> Bool
isPalindrome n = n == (rev n)