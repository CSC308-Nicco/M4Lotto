import UIKit

for i in 1...10
{
    print(i)
}

var sum = 0
for i in 1...10
{
    sum += i
}
print(sum)

var sumOdd = 0
for i in 1...10
{
    if i.isMultiple(of: 2)
    {
        sumOdd += i
    }
}
print(sumOdd)

var arr: [Int] = [1,2,3,4,5]

for i in arr
{
    print(i)
}

var arr1: [Int] = []

arr1.append(contentsOf: 1...100)

print(arr1.reversed())

arr1.removeAll()

while arr1.count < 10
{
    let num = Int.random(in: 1..<19)
    if !arr1.contains(num)
    {
        arr1.append(num)
    }
}
print(arr1)
print(arr1.sorted())
