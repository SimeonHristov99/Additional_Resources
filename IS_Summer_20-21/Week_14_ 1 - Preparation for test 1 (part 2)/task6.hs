main :: IO()
main = do
    print $ dominates (\x -> x + 1) (\x -> x + 2) [1, 2, 3, 4, 5] -- False
    print $ dominates (\x -> x * 3) (\x -> x + 2) [1, 2, 3, 4, 5] -- True
    return ()

dominates :: (Ord a, Ord b, Num b) => (a -> b) -> (a -> b) -> [a] -> Bool
dominates f g xs = foldl1 (&&) (map (\x -> abs(f x) >= abs(g x)) xs)