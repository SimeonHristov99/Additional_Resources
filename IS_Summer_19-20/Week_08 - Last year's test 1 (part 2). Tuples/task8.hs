main :: IO()
main = do
    print $ getTotal db -- 31.2
    return ()

type Product = (String, Int, Double)
type Shop = [Product]

db :: Shop
db = [("bread", 1000, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)]

getTotal :: Shop -> Double
getTotal xs = sum $ map (\(_, _, x)-> x) xs