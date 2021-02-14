import UIKit

var str: String = "Hello, playground"
print(str)

let greeting = "Hello stream!"

str = greeting
print(str)

var sum: Int = 0
var divisor = 2.5 // Double

func add(_ value: Int) {
    sum += value
}

add(1)
print(sum)
add(10)
add(6)
add(13)
print(sum)

func divide(by value: Double) -> Double {
    return Double(sum) / value
}

divide(by: divisor)
divide(by: 3.5)
