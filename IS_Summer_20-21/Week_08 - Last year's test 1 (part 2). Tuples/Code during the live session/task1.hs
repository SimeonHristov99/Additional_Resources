main :: IO()
main = do
    print $ myFilter 10 [[1,2,3],[100,200],[10]]
    print $ myFilter2 10 [[1,2,3],[100,200],[10]]
    print $ myFilter3 10 [[1,2,3],[100,200],[10]] -- [[1.0,2.0,3.0]]
    return ()

myFilter :: Double -> [[Double]] -> [[Double]]
myFilter checkWith [] = []
myFilter checkWith (x:xs)
 | sum x / fromIntegral (length x) < checkWith = x : myFilter checkWith xs
 | otherwise = myFilter checkWith xs

myFilter2 :: Double -> [[Double]] -> [[Double]]
myFilter2 checkWith lst = filter (\xs -> sum xs / fromIntegral (length xs) < checkWith) lst

myFilter3 :: Double -> [[Double]] -> [[Double]]
myFilter3 checkWith lst = [ xs | xs <- lst, sum xs / fromIntegral (length xs) < checkWith]

{-
myFilter checkWith = 10  x = [1, 2, 3] xs = [[100,200],[10]]

Calculate the sum. Calculate the length.
Calculate the 
-}