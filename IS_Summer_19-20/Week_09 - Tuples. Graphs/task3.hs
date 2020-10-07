main :: IO()
main = do
    print $ "Initial:"
    print $ db
    print $ "Buying 500 bread:"
    print $ buy "bread" 500 db
    print $ "Buying 500 water:"
    print $ buy "water" 500 $ buy "bread" 500 db
    print $ "Buying 100 soap:"
    print $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db
    print $ "Buying 500 bread:"
    print $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db
    --print $ buy "water" 100 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db
    --print $ buy "soap" 200 $ buy "bread" 500 $ buy "soap" 100 $ buy "water" 500 $ buy "bread" 500 db
    return ()

type Product = (String, Int, Double)
type Shop = [Product]

db :: Shop
db = [("bread", 1000, 1.20), ("water", 500, 0.50), ("soap", 250, 4.50)]

buy :: String -> Int -> Shop -> Shop
buy _ _ [] = error "Out of stock!"
buy name amount (x@(currentName, currentAmount, currentPrice):xs)
 | name == currentName && amount == currentAmount = xs
 | name == currentName && amount > currentAmount = error "Out of stock!"
 | name == currentName = (currentName, currentAmount - amount, currentPrice) : xs
 | otherwise = x : buy name amount xs

db2 :: Shop
db2 = [("bread", 1000, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)]