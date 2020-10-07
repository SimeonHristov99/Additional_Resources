main :: IO()
main = do
    print $ 12.3216545345
    print $ 12.3216545345 * 100
    print $ round $ 12.3216545345 * 100
    print $ round $ 12.3216545345 * 100
    print $ (fromIntegral $ round $ 12.3216545345 * 100) / (100.0)
    --print $ "Initial:"
    --print $ db
    --print $ "Buying 500 bread:"
    --print $ buy "bread" 500 db -- [("bread",500,1.2),("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)]
    --print $ "Buying 500 water:"
    --print $ buy "water" 500 $ buy "bread" 500 db -- [("bread",500,1.2),("soap",250,4.5)]
    --print $ "Buying 100 soap:"
    --print $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -- [("bread",500,1.2),("soap",150,4.5)]
    --print $ "Buying 500 bread:"
    --print $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -- [("soap",150,4.5)]
    --print $ buy "water" 100 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -- Should give an error.
    --print $ buy "soap" 200 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db -- Should give an error.
    return ()

buy :: String -> Int -> Shop -> Shop
buy _ _ [] = error "Out of stock" --[]
buy name quantity (x@(currentName, currentQuantity, price):xs)
 | name == currentName && quantity < currentQuantity = (currentName, currentQuantity - quantity, price) : xs
 | name == currentName && quantity == currentQuantity = xs
 | name == currentName = error "Insufficient quantity"
 | otherwise = x : buy name quantity xs




{-
[("bread", 1000, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)]
buy "bread" 500 db
buy name = "bread" quantity = 500 ((currentName = "bread", currentQuantity = 1000, price = 1.20):xs = [("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)])
> ("bread", 1000 - 500, 1.20) : [("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)])]


> buy "water" 500 [("bread", 500, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)])]
> buy name = water quantity = 500 (x=("bread", 500, 1.20)@(currentName=bread, currentQuantity=500, price=1.20):xs)
-}

type Product = (String, Int, Double)
type Shop = [Product]

db :: Shop
db = [("bread", 1000, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)]