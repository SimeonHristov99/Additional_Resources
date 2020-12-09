main :: IO()
main = do
    print $ getPalindromes 132465 == 8
    print $ getPalindromes 654546 == 8
    print $ getPalindromes 100001 == 100012
    print $ getPalindromes 21612 == 21614
    print $ getPalindromes 26362 == 26364
    print $ getPalindromesHO 132465 == 8
    print $ getPalindromesHO 654546 == 8
    print $ getPalindromesHO 100001 == 100012
    print $ getPalindromesHO 21612 == 21614
    print $ getPalindromesHO 26362 == 26364

rev :: Int -> Int
rev n = read $ reverse $ show n

getPalindromes :: Int -> Int
getPalindromes n = if n < 2 then error "n was less than 2" else head getXs + last getXs
    where
        getXs = [ x | x <- [2 .. n], mod n x == 0, x == rev x]

getPalindromesHO :: Int -> Int
getPalindromesHO n = if n < 2 then error "n was less than 2" else head getXs + last getXs
    where
        getXs = filter (\ i -> mod n i == 0 && i == rev i) [2 .. n]