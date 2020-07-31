main :: IO()
main = do
    print $ database
    --print $ prod1
    return ()

type Product = (String, Int, Double)
type Shop = [Product]

-- Bread: 1kg for 1.20
prod1 :: Product
prod1 = ("Bread", 1, 1.20)

--Milk: 2L for 4.50
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