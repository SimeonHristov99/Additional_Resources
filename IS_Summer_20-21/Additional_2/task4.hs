main :: IO()
main = do
   print $ (getOddCompositionValue [(+1),(*2),(\x -> x - 1), (\x -> div x 2)]) 2 == 2
   print $ (getOddCompositionValue [id, (5-), (\x -> mod x 2)]) 15 == 1

-- getOddCompositionValue :: [(a -> a)] -> (a -> a)
-- getOddCompositionValue xs = foldr (.) id [x | (x, i) <- zip xs [1..], odd i]

getOddCompositionValue :: [(Int -> Int)] -> (Int -> Int)
getOddCompositionValue xs = (\x -> foldr (\f arg -> f arg) x
                                    [ f | (f, i) <- zip xs [1 .. ], odd i])

-- foldr1 (.) [ x | (x, y) <- zip fs [1..], mod y 2 /= 0]