main :: IO()
main = do
    print $ TwoD 5 6 == TwoD 2 5
    print $ ThreeD 5 6 7

-- class, struct
data Point a = TwoD a a | ThreeD a a a
 deriving (Show, Eq)

--f :: (Num a) => Point a