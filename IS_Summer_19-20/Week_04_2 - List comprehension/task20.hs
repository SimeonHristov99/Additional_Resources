main :: IO()
main = do
    print $ getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)] -- [785.4, 157.08, 125.66, 62.83]
    return ()

type Cylinder = (Double, Double)

getVolumes :: [Cylinder] -> [Double]
getVolumes lst = [pi * r * r* h | (r, h) <- lst]