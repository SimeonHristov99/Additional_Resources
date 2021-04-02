import Data.List

main :: IO()
main = do
    print $ nub [1, 1, 2, 2, 3, 1, 4] == [1, 2, 3, 4]
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"

type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)

{-
(getAverage "Math") <= (getAverage "English") ["Maths", "English", "Programming"]
-}

{-
[("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6)
["Maths", "English", "Programming", "Programming"]
-}

hardestSubject :: [Record] -> Subject
hardestSubject xs = foldr1 (\ s1 s2 -> if getAvg s1 < getAvg s2 then s1 else s2) getUniqueSubjects
 where
     getUniqueSubjects :: [Subject]
     getUniqueSubjects = nub [ subject | (_, subject, _) <- xs]

     getAvg :: Subject -> Note
     getAvg subject = (sum grades) / (fromIntegral $ length grades)
      where
          grades :: [Note]
          grades = [ currentGrade | (_, currentSubject, currentGrade) <- xs, currentSubject == subject]

     