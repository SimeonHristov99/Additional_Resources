import Data.List

main :: IO()
main = do
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] -- "English"
    return ()

type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)

hardestSubject :: [Record] -> Subject
hardestSubject xs = foldr1 (\s1 s2 -> if getAverageGrade s1 < getAverageGrade s2 then s1 else s2) getUniqueSubjects
 where
     getAverageGrade subject = sum k / fromIntegral (length k)
      where
          k = [ grade | (_, currentSubject, grade) <- xs, currentSubject == subject]
     getUniqueSubjects :: [Subject]
     getUniqueSubjects = nub $ [ subject | (_, subject, _) <- xs]