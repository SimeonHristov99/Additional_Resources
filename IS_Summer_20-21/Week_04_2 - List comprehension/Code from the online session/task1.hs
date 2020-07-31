main :: IO()
main = do
    print $ isPrime 45
    print $ primeEndingWith7 1 100 -- 
    return ()

isPrime n = if n < 2 then False else length [x | x <- [2 .. n - 1], mod n x == 0] == 0

primeEndingWith7 :: Int -> Int -> [Int]
primeEndingWith7 a b = [ x | x <- [a + 1 .. b - 1], isPrime x, mod x 10 == 7]

{-
expr ::= x, x + 2, (x + y)

[ (x, y) | x <- [1 .. 10], y <- [2 .. 20]]


[ expr | g1, g2, ... gn, t1, t2, ... tn]



-- Def: The making of a list whose elements are calculated expressions
-- the arguments in which are generated from (an)other list(s)
-- and may be subject to certain criteria.
-}