main :: IO()
main = do
    print $ getAverage -- 4.457142857142857
    return ()

type Product = (String, Int, Double)
type Shop = [Product]

db :: Shop
db = [("bread", 1000, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)]

getAverage :: Double
getAverage = sum [ x | (_, _, x) <- db] / (fromIntegral $ length db)