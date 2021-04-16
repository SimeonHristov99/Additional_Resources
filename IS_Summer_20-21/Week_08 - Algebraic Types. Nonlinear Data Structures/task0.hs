main :: IO()
main = do
    print $ map (\ (_, fn, _) -> fn) [("Simo", 71845, 5), ("Yoncho", 71865, 6)]
    print $ length $ filter (\ (_, _, gr) -> gr >= 4.50 && gr < 5.50) [("Simo", 71845, 5), ("Yoncho", 71865, 6)]