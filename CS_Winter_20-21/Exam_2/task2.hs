main :: IO()
main = do
    print $ dominates (+4) (*2) [1..4] == True
    print $ dominates (+4) (*2) [1..5] == False -- 5 + 4 = 9 < 5 * 2 = 10
    print $ dominates (*3) (*2) [1..10] == True
    print $ dominates (*2) (+4) [1..5] == False
    print $ dominates (*(-5)) (+4) [1..5] == True

dominates :: (Int -> Int) -> (Int -> Int) -> [Int] -> Bool
dominates f g xs = all (\ (x, y) -> (abs x) >= (abs y)) $ zip (map f xs) (map g xs)