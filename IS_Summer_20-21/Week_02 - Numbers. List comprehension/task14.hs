main :: IO()
main = do
    print $ isPalindrome 1
    print $ isPalindrome 121
    print $ isPalindrome 12
    print $ isPalindrome 120
    print $ isPalindrome 12321
    print $ isPalindrome 1221
    return()

isPalindrome :: Integer -> Bool
isPalindrome n = helper (toList n)
 where
     helper :: [Integer] -> Bool
     helper [] = True
     helper [a] = True
     helper lst
      | tail lst == [] = True
      | head lst == last lst = helper (init (tail lst))
      | otherwise = False
     toList :: Integer -> [Integer]
     toList n
      | n < 10 = [n]
      | otherwise = mod n 10 : toList (div n 10)