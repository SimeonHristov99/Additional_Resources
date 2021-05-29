main :: IO()
main = do
    print $ (averageFunction [(+1), (**0.5), (2**)]) 2 == 2.8
    print $ (averageFunction [(5+), (*15), (+10)]) 22 == 129.67

roundTwo :: Double -> Double
roundTwo x = (fromIntegral $ round $ x * 100) / 100

averageFunction :: [(Double -> Double)] -> Double -> Double
averageFunction fs = (\ x -> roundTwo $ (sum $ map (\ f -> f x) fs) /
                                (fromIntegral $ length fs) )