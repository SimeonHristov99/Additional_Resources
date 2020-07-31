main :: IO()
main = do
    print $ cheaperAlternatives "bread" 1.20
    return ()

type Product = (String, Int, Double)
type Shop = [Product]

db :: Shop
db = [("bread", 1000, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("bread", 500, 0.50), ("soap", 250, 4.50)]

cheaperAlternatives :: String -> Double -> Int
cheaperAlternatives name price = length $ filter (\(name2, _, price2) -> price2 < price && name2 == name) db