main :: IO()
main = do
    print $ getNeeded 750 -- [("cheese",750,5.0),("water",500,0.5),("soap",250,4.5)]
    return ()

type Product = (String, Int, Double)
type Shop = [Product]

db :: Shop
db = [("bread", 1000, 1.20), ("milk", 2000, 4.5), ("lamb", 5000, 10), ("cheese", 750, 5), ("butter", 1000, 5.50), ("water", 500, 0.50), ("soap", 250, 4.50)]

getNeeded :: Int -> [Product]
getNeeded checkWith = filter (\(_, amount, _) -> amount <= checkWith) db