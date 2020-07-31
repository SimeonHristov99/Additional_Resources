main :: IO()
main = do
    print $ (pairCompose [(\x -> x+1),(\x -> x+2),(\x -> x+3)]) 1 -- 8 ((1 + 2) + 1) + (1 + 3))
    return ()

pairCompose :: [(Int -> Int)] -> (Int -> Int)
pairCompose [f] = (\x -> f x)
pairCompose (x:y:ys) = (\z -> (x . y) z + pairCompose ys z)


{-
pairCompose [f1, f2, f3, f4 ... fm] -> (\x -> x), m = 1 .. 
f1 (f2 x) + f3 (f4 x) + .. + fn-1 (fn x), n = 2 .. n

pairCompose [(\x -> x+1),(\x -> x+2),(\x -> x+3)] 1
> pairCompose (x:y:xs) = (\z -> (x . y) z + pairCompose xs z)
> pairCompose ( (\x -> x + 1) (\x -> x + 2) [(\x -> x + 3)] ) = (\1 -> 4 + pairCompose [(\x -> x + 3)] 1 )
pairCompose [f] = (\x -> f x)
-}