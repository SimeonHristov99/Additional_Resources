main :: IO()
main = do
    --print $ fst (1, 2)
    --print $ snd (1, 2)
    --print $ (\(x, y, z) -> z) (1, 2, 3)
    print $ getTotal database -- 31.2
    print $ getTotal2 database -- 31.2
    return ()

getTotal :: Shop -> Double
getTotal [] = 0
getTotal ((_, _, x):xs) = x + getTotal xs

getTotal2 :: Shop -> Double
getTotal2 database = sum (map (\(_, _, z) -> z) database)


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