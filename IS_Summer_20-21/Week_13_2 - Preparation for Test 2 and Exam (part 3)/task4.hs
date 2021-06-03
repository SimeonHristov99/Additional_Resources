main :: IO()
main = do
    print $ iterator [1, 2, 3] (+1) == True
    print $ iterator [1, 2, 4] (+1) == False

iterator :: (Num a, Eq a) => [a] -> (a -> a) -> Bool
iterator [x, y] f = f x == y
iterator (x:y:xs) f = f x == y && iterator (y:xs) f
iterator _ _ = False