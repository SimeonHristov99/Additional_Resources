main :: IO()
main = do
    print $ sumExpr (2+) [0, 1, 2, 3] $ 2 -- 80
    print $ sumExpr (*0.8) [0, 1, 2, 3, 4, 5] $ 10 -- 4345680.0
    return ()

sumExpr :: (Num a) => (a -> a) -> [a] -> (a -> a)
sumExpr f ys = (\x -> sum [ yi * f (x^power) | (yi, power) <- zip ys [1 ..]])

-- zip [0, 1, 2, 3] [1, 2, 3, 4, 5, 6 ..] -> [(0, 1), (1, 2)]