main :: IO()
main = do
    print $ getAverage -- 4.457142857142857
    return ()

getAverage :: Double
getAverage = sum (map (\(_, _, z) -> z) database) / fromIntegral (length database)

type Product = (String, Int, Double)
type Shop = [Product]

database :: Shop
database = [
    ("Bread", 1, 1.20),
    ("Milk", 2, 4.50),
    ("Lamb", 5, 10.00),
    ("Cheese", 750, 5.00),
    ("Butter", 1, 5.50),
    ("Water", 500, 0.50),
    ("Soap", 250, 4.50)
    ]