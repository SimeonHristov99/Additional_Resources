main :: IO()
main = do
    print $ cheapestAlternative "lamb" 5.50
    print $ cheapestAlternative "lamb" 10
    return ()

type Product = (String, Int, Double)
type Shop = [Product]

db :: Shop
db = [("bread", 1000, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("lamb", 1000, 5.50), ("water", 500, 0.50), ("lamb", 250, 4.50)]

cheapestAlternative :: String -> Double -> Int
cheapestAlternative name price = length $ filter (\(_, _, y) -> y < price) (filter (\(x, _, _) -> x == name) db)