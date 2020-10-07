main :: IO()
main = do
    print $ encode ['A'..'Z'] 'A' 1 -- 'B'
    print $ encode ['A', 'C' ..'F'] 'A' (-2) -- 'C'
    print $ encode ['A'..'Z'] 'C' 2 -- 'E'
    print $ encode ['A'..'Z'] 'Z' 3 -- 'C'
    print $ encode ['A'..'Z'] 'A' (-1) -- 'Z'
    print $ encode ['A'..'Z'] 'C' (-2) -- 'A'
    print $ encode ['A'..'Z'] 'Z' (-3) -- 'W'
    --print $ encode ['A'..'Z'] '@' 1 -- error “unsupported symbol: @”
    return ()

encode :: [Char] -> Char -> Int -> Char
encode alphabet ch offset = alphabet !! mod ((position_in_alphabet alphabet) + offset) (length alphabet)
 where
     position_in_alphabet :: [Char] -> Int
     position_in_alphabet "" = error ("unsupported symbol: " ++ [ch])
     position_in_alphabet (l:ls)
      | ch == l = 0
      | otherwise = 1 + position_in_alphabet ls