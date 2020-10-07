main :: IO()
main = do
    print (oddOrEven [0]) -- even
    print (oddOrEven [0, 1, 4]) -- odd
    print (oddOrEven [0, -1, -5]) -- even
    return ()

oddOrEven :: [Integer] -> String
oddOrEven lst
 | even (sum lst) = "even"
 | otherwise = "odd"