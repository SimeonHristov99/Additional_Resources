main :: IO()
main = do
    print $ Circle 5 == Circle 5
    print $ Rectange 5 10
    print $ Triange 5 10 11
    print $ Cylinder 5 10
    -- print $ Shape 5
    print $ isSummer Summer
    print $ isSummer Winter

data Shape = Circle Int | Rectange Int Int | Triange Int Int Int | Cylinder Int Int
 deriving (Show, Eq)

data Season = Summer | Winter | Autumn | Spring
 deriving (Show)

isSummer :: Season -> Bool
isSummer Summer = True
isSummer _ = False

-- int a;
-- Shape b; -- struct, class

-- | (||) или 
-- f :: (Num a) => a -> a -> b