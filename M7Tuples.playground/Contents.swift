import UIKit

let a = (1, "2", 3.0)
a.0
a.1
a.2

let scores = (100,90,75)
print(scores.0)
print(scores.1)
print(scores.2)

let studentScores = (math: 100, english: 90, science: 75)

print(studentScores.0)
print(studentScores.math)
print(studentScores.english)
print(studentScores.science)

let (_, _, scienceProject) = studentScores
print(scienceProject)
