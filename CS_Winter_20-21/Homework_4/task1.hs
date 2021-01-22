main :: IO()
main = do
    print $ getAverageBalance (accounts1, people1) (\(_,_,city) -> city == "Burgas") == 24.95
    print $ getAverageBalance (accounts1, people1) (\(_,(n:_),_) -> n == 'P') == 18.85
    print $ averageBalanceOfCities (accounts1,people1) ["Sofia","Gabrovo","Stara Zagora"] == 67.85
    print $ getAverageBalance (accounts1, people1) (\ (n,_,_) -> n ==2) == 26.8
    
type Account = (Int, Int, Double) -- idBankAccount, idPerson, money
type Person = (Int, String, String) -- idPerson, name, residence

people1 :: [Person]
people1 = [(1, "Ivan", "Sofia"),(2, "Georgi", "Burgas"), (3, "Petar", "Plovdiv"),(4, "Petya", "Burgas")]

accounts1 :: [Account]
accounts1 = [(1, 1, 12.5),(2, 1, 123.2),(3, 2, 13.0),(4, 2, 50.2),(5, 2, 17.2),(6, 3, 18.3),(7, 4, 19.4)]

roundTwoDig :: Double -> Double
roundTwoDig x = (fromIntegral $ round $ x * 100) / 100.0

getAverageBalance :: ([Account], [Person]) -> (Person -> Bool) -> Double
getAverageBalance (accounts, people) p = roundTwoDig $ sum xs / (fromIntegral $ length xs)
 where
     xs = [ money | acc@(_, idAcc, money) <- accounts, per@(idPer, _, _) <- people, p per, idAcc == idPer ]

averageBalanceOfCities :: ([Account], [Person]) -> [String] -> Double
averageBalanceOfCities db xs = getAverageBalance db (\ (_, _, city) -> elem city xs)