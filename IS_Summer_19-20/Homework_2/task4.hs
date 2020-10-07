main :: IO()
main = do
    print $ getAverageBalance (as,ps) (\(_,_,city) -> city == "Burgas") -- 24.950000000000003
    print $ getAverageBalance (as,ps) (\(_,(n:_),_) -> n == 'P') -- 18.85
    print $ getAverageBalance (as,ps) (\(_,(n:_),_) -> n == 'Q') -- 0
    return ()

type Account = (Int, Int, Double)
type Person = (Int, String, String)

ps :: [Person]
ps = [(1, "Ivan", "Sofia"), (2, "Georgi", "Burgas"), (3, "Petar", "Plovdiv"), (4, "Petya", "Burgas")]

as :: [Account]
as = [(1, 1, 12.5), (2, 1, 123.2), (3, 2, 13.0), (4, 2, 50.2), (5, 2, 17.2), (6, 3, 18.3), (7, 4, 19.4)]

getAverageBalance :: ([Account], [Person]) -> (Person -> Bool) -> Double
getAverageBalance (x, y) p = if listWithBalances == [] then 0 else (sum listWithBalances) / fromIntegral (length listWithBalances)
 where
     listWithBalances = [ balance | (idPerson, _, _) <- filter p y, (_, idAccount, balance) <- x, idPerson == idAccount]