main:: IO()
main = do
    print $ encode ['A'..'Z'] 'A' 1 == 'B'
    print $ encode ['A', 'C' ..'F'] 'A' (-2) == 'C'
    print $ encode ['A'..'Z'] 'C' 2 == 'E'
    print $ encode ['A'..'Z'] 'Z' 3 == 'C'
    print $ encode ['A'..'Z'] 'A' (-1) == 'Z'
    print $ encode ['A'..'Z'] 'C' (-2) == 'A'
    print $ encode ['A'..'Z'] 'Z' (-3) == 'W'
    --print $ encode ['A'..'Z'] '@' 1 -- == error “unsupported symbol: @”

encode::String -> Char -> Int -> Char
encode xs simbol number = xs !! mod (helper xs 0 + number) (length xs)
 where
  helper::String -> Int -> Int
  helper [] _ = error ("unsupported symbol: " ++[simbol])
  helper (x:xs) index
   | x == simbol = index
   | otherwise = helper xs (index + 1)