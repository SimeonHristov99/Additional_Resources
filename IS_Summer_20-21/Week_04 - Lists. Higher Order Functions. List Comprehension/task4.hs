main :: IO()
main = do
    print $ inside 1 5 4 == True -- a = 1, b = 5, x = 4
    print $ inside 5 1 4 == True
    print $ inside 10 50 20 == True
    print $ inside 10 50 1 == False

    print $ (\ x y -> x + y) 5 6
    print $ (\ f x y -> f (x + y)) (\ sum -> sum * (-10)) 5 6
    print $ map (\ x -> 1 + x) [1, 2, 3]

addTwo :: Int -> Int -> Int
addTwo x y = x + y

inside :: Int -> Int -> Int -> Bool
inside x y n = elem n [min x y .. max x y]