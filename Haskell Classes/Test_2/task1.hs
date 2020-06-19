main :: IO()
main = do
    print $ rotate 2 [5, 6] == [5, 6]
    print $ rotate (-9) ['a','b','c','d','e','f','g','h'] == "habcdefg"
    print $ rotate 8 ['a','b','c','d','e','f','g','h'] == "abcdefgh"
    print $ rotate 0 ['a','b','c','d','e','f','g','h'] == "abcdefgh"
    print $ rotate 3 ['a','b','c','d','e','f','g','h'] == "defghabc"
    print $ rotate (-2) ['a','b','c','d','e','f','g','h'] == "ghabcdef"
    print $ rotate 2 ['a','b','c','d','e','f','g','h'] == "cdefghab"
    print $ rotate 10 ['a','b','c','d','e','f','g','h'] == "cdefghab"
    print $ rotate (-10) ['a','b','c','d','e','f','g','h'] == "ghabcdef"
    return ()

rotate :: Int -> [a] -> [a]
rotate n xs = helper (mod n (length xs)) xs []
 where
     helper :: Int -> [a] -> [a] -> [a]
     helper 0 xs result = xs ++ result
     helper n xs result
      | n < 0 = helper (n + 1) (init xs) ((last xs) : result)
      | otherwise = helper (n - 1) (tail xs) (result ++ [head xs])

{-
rotate n=(-9) xs=['a','b','c','d','e','f','g','h']
> helper (mod (-9) 8) ['a','b','c','d','e','f','g','h'] []
> helper n=7 xs=['a','b','c','d','e','f','g','h'] result=[]
> helper (7 - 1) ['b','c','d','e','f','g','h'] ([] ++ ['a'])
> helper n=6 xs=['b','c','d','e','f','g','h'] result=['a']
> helper (6 - 1) ['c','d','e','f','g','h'] (['a'] ++ ['b'])
> helper 5 ['c','d','e','f','g','h'] result=['a', 'b']
> ...
> helper n=1 xs=['g', 'h'] result=['a','b','c','d','e','f']
> helper (1 - 1) ['h'] (['a','b','c','d','e','f'] ++ ['g'])
> helper n=0 xs=['h'] result=['a','b','c','d','e','f', 'g']
> ['h'] ++ ['a','b','c','d','e','f', 'g']
> ['h', 'a','b','c','d','e','f', 'g'] (= "habcdefg")
-}