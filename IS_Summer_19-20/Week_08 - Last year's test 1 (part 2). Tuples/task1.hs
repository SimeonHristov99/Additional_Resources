main :: IO()
main = do
    print $ myFilter 10  [[1,2,3],[100,200],[10]] -- [[1.0,2.0,3.0]]
    return ()

myFilter :: Double -> [[Double]] -> [[Double]]
myFilter checkWith lst = [ x | x <- lst, sum x / fromIntegral (length x) < checkWith]