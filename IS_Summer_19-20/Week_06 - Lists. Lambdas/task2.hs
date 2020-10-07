main :: IO()
main = do
    print $ (pairCompose [(\x -> x+1),(\x -> x+2),(\x -> x+3)]) 1 -- 8 ((1 + 2) + 1) + (1 + 3))
    return ()

pairCompose :: [(Int -> Int)] -> (Int -> Int)
pairCompose [] = error "List must contain at least one function!"
pairCompose [f] = f
pairCompose (f1:f2:fn) = (\x -> (f1 . f2) x + pairCompose fn x)