main :: IO()
main = do
    print $ coldestCapital [(Country "Bulgaria" "Sofia" [(City "Varna" 0 16), (City "Plovdiv" 120 14), (City "Sofia" 420 13)]), (Country "Germany" "Berlin" [(City "Munchen" 200 15), (City "Berlin" 150 12), (City "Ulm" 210 15)]), (Country "France" "Paris" [(City "Paris" 180 15), (City "Nice" 0 14), (City "Lyon" 500 13)])] == "Germany"

type Name = String
type Capital = Name
type AvgYearlyTemperature = Double
type Elevation = Int

data City = City Name Elevation AvgYearlyTemperature
 deriving (Show)
data Country = Country Name Capital [City]
 deriving (Show)

coldestCapital :: [Country] -> Name
coldestCapital countries = fst $ foldr1 chooseColder (map toTemperature countries)
 where
  chooseColder c1@(_, temp1) c2@(_, temp2) = if temp1 <= temp2 then c1 else c2
  toTemperature (Country name capital cities) = (name, (head [temp | (City name _ temp) <- cities, name == capital]))

{-
coldestCapital :: [Country] -> Name
coldestCapital countries = getName $ foldr1 (\ c1 c2 -> if calcCountryAvg c1 <= calcCountryAvg c2 then c1 else c2) countries

calcCountryAvg :: Country -> AvgYearlyTemperature
calcCountryAvg (Country _ _ xs) = sum $ [ avgTemp | (City _ _ avgTemp) <- xs ]

getName :: Country -> String
getName (Country name _ _) = name
-}
  