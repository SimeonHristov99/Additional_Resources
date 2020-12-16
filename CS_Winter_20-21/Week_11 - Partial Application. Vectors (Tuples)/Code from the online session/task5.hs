main :: IO()
main = do
    print $ sumVectors (1, 2, 3) (4, 5, 6) == (5, 7, 9)
    print $ sumVectors (0, 0, 0) (100, 200, -300) == (100, 200, -300)

    print $ scaleVector (1, 2, 3) 5 == (5, 10, 15)
    print $ scaleVector (5, 2, 159) (-2) == (-10, -4, -318)

    print $ dotProduct (1, 2, 3) (7, 4, 1) == (7, 8, 3)
    print $ dotProduct (5, 2, 159) (0, -1, -2) == (0, -2, -318)

    print $ crossProduct (1, 2, 3) (7, 4, 1) == (-10, 20, -10)
    print $ crossProduct (5, 2, 159) (0, -1, -2) == (155, 10, -5)

    print $ magnitude (1, 2, 3) == 3.7416573867739413
    print $ magnitude (7, 4, 1) == 8.12403840463596
    print $ magnitude (-10, 20, -10) == 24.49489742783178
    print $ magnitude (5, 2, 159) == 159.0911688309568
    print $ magnitude (0, -1, -2) == 2.23606797749979
    print $ magnitude (155, 10, -5) == 155.40270267920053

type Vector = (Double, Double, Double)

sumVectors :: Vector -> Vector -> Vector
sumVectors (x1, x2, x3) (y1, y2, y3) = (x1 + y1, x2 + y2, x3 + y3)

scaleVector :: Vector -> Double -> Vector
scaleVector (x1, x2, x3) n = (x1 * n, x2 * n, x3 * n)

dotProduct :: Vector -> Vector -> Vector
dotProduct (v11, v12, v13) (v21, v22, v23) = (v11 * v21, v12 * v22, v13 * v23)

crossProduct :: Vector -> Vector -> Vector
crossProduct (v11, v12, v13) (v21, v22, v23) = (v12 * v23 - v13 * v22,
                                v13 * v21 - v11 * v23, v11 * v22 - v12 * v21)

magnitude :: Vector -> Double
magnitude (x1, x2, x3) = sqrt(x1 * x1 + x2 * x2 + x3 * x3)