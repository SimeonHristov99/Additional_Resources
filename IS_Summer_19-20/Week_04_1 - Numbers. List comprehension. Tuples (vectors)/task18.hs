main :: IO()
main = do
    print $ sumVectors (1, 2, 3) (4, 5, 6) -- (5, 7, 9)
    print $ sumVectors (0, 0, 0) (100, 200, -300) -- (100, 200, -300)

    print $ scaleVector (1, 2, 3) 5 -- (5, 10, 15)
    print $ scaleVector (5, 2, 159) (-2) -- (-10, -4, -318)

    print $ dotProduct (1, 2, 3) (7, 4, 1) -- (7, 8, 3)
    print $ dotProduct (5, 2, 159) (0, -1, -2) -- (0, -2, -318)

    print $ crossProduct (1, 2, 3) (7, 4, 1) -- (-10,20,-10)
    print $ crossProduct (5, 2, 159) (0, -1, -2) -- (155,10,-5)

    print $ magnitude (1, 2, 3)
    print $ magnitude (7, 4, 1)
    print $ magnitude (-10, 20, -10)
    print $ magnitude (5, 2, 159)
    print $ magnitude (0, -1, -2)
    print $ magnitude (155, 10, -5)
    return ()

type Vector = (Double, Double, Double)

sumVectors :: Vector -> Vector -> Vector
sumVectors (v11, v12, v13) (v21, v22, v23) = (v11 + v21, v12 + v22, v13 + v23)

scaleVector :: Vector -> Double -> Vector
scaleVector (v1, v2, v3) p = (v1 * p, v2 * p, v3 * p)

dotProduct :: Vector -> Vector -> Vector
dotProduct (v11, v12, v13) (v21, v22, v23) = (v11 * v21, v12 * v22, v13 * v23)

crossProduct :: Vector -> Vector -> Vector
crossProduct (v11, v12, v13) (v21, v22, v23) = (v12 * v23 - v13 * v22, v13 * v21 - v11 * v23, v11 * v22 - v12 * v21)

magnitude :: Vector -> Double
magnitude (v1, v2, v3) = sqrt(v1 * v1 + v2 * v2 + v3 * v3)