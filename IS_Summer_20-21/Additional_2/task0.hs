main :: IO()
main = do
    print $ (read "123" :: Int)
    print $ (read "123" :: Double)
    print $ (read "TwoD 5 5" :: Point Int)
    print $ (read "TwoD 5 5" :: Point Double)

data Point a = TwoD a a | ThreeD a a a
 deriving (Show, Read)