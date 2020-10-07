main :: IO()
main = do
    print $ TwoD 2 5
    print $ ThreeD 2 5 6
    return ()

data Point a = TwoD a a | ThreeD a a a
 deriving (Show)