main :: IO()
main = do
    print $ getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)]
    return ()

type Cylinder = (Double, Double)

getVolumes :: [Cylinder] -> [Double]
getVolumes lst = [pi * r * r * h | (r, h) <- lst]

    {-
expr ::= x, x + 2, (x + y)

[ expr | x <- [1 .. 10], y <- [2 .. 20]]

[ expr | g1, g2, ... gn, t1, t2, ... tn]
-- Def: The making of a list whose elements are calculated expressions
-- the arguments in which are generated from (an)other list(s)
-- and may be subject to certain criteria.
-}