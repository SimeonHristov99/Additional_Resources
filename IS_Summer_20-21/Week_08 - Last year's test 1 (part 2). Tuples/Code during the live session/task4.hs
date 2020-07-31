import Data.Char

main :: IO()
main = do
    print $ encode [] 'A' 1
    print $ encode ['A'..'Z'] 'A' 1 -- 'B'
    print $ encode ['A', 'C' ..'F'] 'A' (-2) -- 'C'
    print $ encode ['A'..'Z'] 'C' 2 -- 'E'
    print $ encode ['A'..'Z'] 'Z' 3 -- 'C'
    print $ encode ['A'..'Z'] 'A' (-1) -- 'Z'
    print $ encode ['A'..'Z'] 'C' (-2) -- 'A'
    print $ encode ['A'..'Z'] 'Z' (-3) -- 'W'
    print $ encode ['A'..'Z'] '@' 1 -- error “unsupported symbol: @”
    return ()

-- ord :: Char -> Int

{-
encode alphabet = ['A'..'Z'] element = 'A' offset = 1
> convert element to Int => mod (elementIndex 0 + mod offset lenght) length
> mod (elementIndex + offset) (length aphabet)
-}

encode :: [Char] -> Char -> Int -> Char
encode alphabet element offset = if elem element alphabet
    then alphabet!!(mod ((ord element - ord 'A') + mod offset (length alphabet)) (length alphabet))
    else error "blah"