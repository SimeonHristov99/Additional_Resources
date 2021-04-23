main :: IO()
main = do
    print $ db
    print $ getTotal == 70825.0
    print $ "Buying 500 bread:"
    print $ buy "bread" 500 db
    print $ "Buying 500 water:"
    print $ buy "water" 500 (buy "bread" 500 db)
    print $ "Buying 100 soap:"
    print $ buy "soap" 100 (buy "water" 500 (buy "bread" 500 db))
    print $ "Buying 500 bread:"
    print $ buy "bread" 500 (buy "soap" 100 (buy "water" 500 (buy "bread" 500 db)))
    print $ buy "water" 100 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -- Should give an error.
    print $ buy "soap" 200 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -- Should give an error.

type Product = (String, Int, Double)
type Shop = [Product]

db :: Shop
db = [("bread", 1000, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)]

getTotal :: Double
getTotal = foldl (+) 0 [ (fromIntegral quantity) * price | (_, quantity, price) <- db]

buy :: String -> Int -> Shop -> Shop
buy name _ [] = []
buy name amount (x@(currentName, currentQuan, currentPrice):xs)
 | name == currentName && amount == currentQuan = xs
 | name == currentName && amount > currentQuan = error $ "Not enough " ++ name
 | name == currentName = (currentName, currentQuan - amount, currentPrice) : xs
 | otherwise = x : buy name amount xs