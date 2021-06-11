main :: IO()
main = do
    print $ bestStudents [("Иван Иванов", 6.0),("Петър Петров", 5.5),("Мария Маринова",6.0),("Марина Петрова",5.0)] == ["Иван Иванов", "Мария Маринова"]

bestStudents :: [(String, Double)] -> [String]
bestStudents xs = [name | (name, grade) <- xs, maxGrade == grade]
 where
    maxGrade :: Double
    maxGrade = maximum [grade | (name, grade) <- xs]