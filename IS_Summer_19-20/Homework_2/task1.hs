main :: IO()
main = do
    print $ generate 1 1 -- [1.0]
    print $ generate 1 3 -- [1.0,1.5,1.83]
    print $ generate 0.1 5 -- [1.0,1.93,2.83,3.7,4.55]
    return ()

generate :: Double -> Int -> [Double]
generate p n = map (\x -> (fromIntegral $ round $ x * 100) / 100.0) (reverse $ helper 2 1.0 [])
 where
     helper :: Int -> Double -> [Double] -> [Double]
     helper m previous result
      | m > n = previous : result
      | otherwise = helper (m + 1) (previous + 1 / (fromIntegral (m) ** p)) (previous : result)

{-
generate p=1 n=3
> helper m=2 previous=1.0     result=[]
> helper m=3 previous=1.5     result=[1.0]
> helper m=4 previous=1.83(3) result[1.5, 1.0]
> 1.83(3) : [1.5, 1.0]
> [1.83(3), 1.5, 1.0]
-}