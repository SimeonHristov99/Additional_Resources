main :: IO()
main = do
    print $ getOddCompositionValue [(\x -> x + 1),(\x -> x * 2),(\x -> x - 1), (\x -> div x 2)] $ 2 -- 2
    return ()

getOddCompositionValue :: [(Int -> Int)] -> (Int -> Int)
getOddCompositionValue xs = (\x -> foldr (\function argument -> function argument) x
                                        [ f | (f, i) <- zip xs [1 .. ], mod i 2 /= 0])