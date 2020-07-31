import Data.List

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
alternativeSigns xs = if length ks < 2 then error "List must contain more than two elements!" else helper ks
 where
     ks = filter (/= 0) xs
     helper :: [Int] -> Bool
     helper [a] = True
     helper (x:y:ys)
      | x < 0 = if y < 0 then False else helper (y:ys)
      | otherwise = if y > 0 then False else helper (y:ys)