main :: IO()
main = do
    print $ dominates (+4) (*2) [] == True
    print $ dominates (+4) (*2) [1..4] == True
    print $ dominates (+4) (*2) [1..5] == False -- 5 + 4 = 9 < 5 * 2 = 10

dominates :: (Int -> Int) -> (Int -> Int) -> [Int] -> Bool
dominates f g xs = all (\ (x, y) -> (abs x) >= (abs y)) $ zip (map f xs) (map g xs)