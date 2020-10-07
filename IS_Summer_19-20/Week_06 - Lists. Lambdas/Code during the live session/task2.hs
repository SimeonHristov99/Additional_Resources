main :: IO()
main = do
    print $ alternativeSigns [1, -2, 3, -4, 5, -6] -- True
    print $ alternativeSigns [-1, 2, -3, 4, -5, 6] -- True
    print $ alternativeSigns [-1, 2, 0, 0, -5, 6] -- True
    print $ alternativeSigns [-1, 2, -3, 0, -5, 0] -- False
    print $ alternativeSigns [-1, 2, -3, 4, 0, 0] -- True
    print $ alternativeSigns [0, 0, 2, -2] -- True
    return ()

alternativeSigns :: [Int] -> Bool
alternativeSigns xs = if length k < 2 then error "List must contain at least two elements!" else  helper k -- [x | x <- xs, x /= 0]
 where
     k = (filter (/= 0) xs)
     helper :: [Int] -> Bool
     helper [] = True
     helper [x] = True
     helper (x:y:ys)
      | x * y > 0 = False
      | otherwise = helper (y:ys)

{-
[-1, 2, 0, 0, -5, 6]
helper [-1, 2, -5, 6]
> helper (-1) (2) [-5, 6]
> -2 < 0
=> helper [2, -5, 6]
> 2 * -5 = -10 < 0
=> helper [-5, 6]
> -5 * 6 < 0 => helper [6]
=> True
-}