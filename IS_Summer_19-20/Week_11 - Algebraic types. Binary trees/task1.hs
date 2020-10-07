main :: IO()
main = do
    print $ twoDPoint
    print $ threeDPoint
    return ()

data Point a = TwoD a a | ThreeD a a a
 deriving (Show)

twoDPoint = TwoD 5 6
threeDPoint = ThreeD 2 4 9