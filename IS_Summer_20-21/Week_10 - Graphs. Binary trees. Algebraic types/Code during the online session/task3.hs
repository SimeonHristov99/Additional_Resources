main :: IO()
main = do
    print $ Circle 5
    print $ Circle 5.5
    print $ Rectangle 5 4
    print $ Triangle 3 5 6
    print $ Cylinder 20.1 23.1
    return ()

data Shape = Circle Double | Rectangle Double Double | Triangle Double Double Double | Cylinder Double Double
    deriving (Show)

