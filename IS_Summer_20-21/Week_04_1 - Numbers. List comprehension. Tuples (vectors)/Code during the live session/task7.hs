main :: IO()
main = do
    print $ incrementBy 3 [5, 1, 5, 3, 5] -- [8, 4, 8, 6, 8]
    print $ incrementBy2 3 [5, 1, 5, 3, 5] -- [8, 4, 8, 6, 8]
    return()

incrementBy :: Int -> [Int] -> [Int]
incrementBy n ls = [ x + n | x <- ls] -- map (+n) lst

incrementBy2 n ls  = helper [] n ls
 where
     helper :: [Int] -> Int -> [Int] -> [Int]
     helper newList number [] = reverse newList
     helper newList number (a:as) = helper ( (a + number) : newList) number as