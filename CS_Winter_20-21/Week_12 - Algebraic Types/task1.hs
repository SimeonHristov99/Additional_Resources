main :: IO()
main = do
    print $ Circle 5
    print $ Rectange 5 20
    print $ Triange 5 3 9
    print $ Cylinder 5 3

data Shape = Circle Int
              | Rectange Int Int
              | Triange Int Int Int
              | Cylinder Int Int
 deriving (Show)