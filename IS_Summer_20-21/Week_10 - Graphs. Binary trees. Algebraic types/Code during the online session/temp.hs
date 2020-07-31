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

{-
getAverageBalance (as,ps) (\(_,_,city) -> city == "Burgas")
getAverageBalance (x=[(1, 1, 12.5), (2, 1, 123.2), (3, 2, 13.0), (4, 2, 50.2), (5, 2, 17.2), (6, 3, 18.3), (7, 4, 19.4)],
                y=[(1, "Ivan", "Sofia"), (2, "Georgi", "Burgas"), (3, "Petar", "Plovdiv"), (4, "Petya", "Burgas")])
                p=(\(_,_,city) -> city == "Burgas") =
                    if [ balance | [idPerson=2, idPerson=4] , (_, idAccount, balance) <- x, idPerson == idAccount] == [] then 0 else (sum listWithBalances) / fromIntegral (length listWithBalances)
-}

{-
 filter p=(\(_,_,city) -> city == "Burgas") y=[(1, "Ivan", "Sofia"), (2, "Georgi", "Burgas"), (3, "Petar", "Plovdiv"), (4, "Petya", "Burgas")]
[(2, "Georgi", "Burgas"), (4, "Petya", "Burgas")]

[(_, 1, 12.5), (_, 1, 123.2), (_, 2, 13.0), (_, 2, 50.2), (_, 2, 17.2), (_, 3, 18.3), (_, 4, 19.4)]

sum [13, 50.2, 17.2, 19.4] = X / 4.0

-}