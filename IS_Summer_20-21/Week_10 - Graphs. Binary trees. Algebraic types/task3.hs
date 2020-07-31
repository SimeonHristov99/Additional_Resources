main :: IO()
main = do
    print $ Circle 5
    print $ Rectangle 5 20
    print $ Triangle 5 3 9
    print $ Cylinder 5 12
    return ()

data Shape = Circle Int | Rectangle Int Int | Triangle Int Int Int | Cylinder Int Int
 deriving (Show, Read)