import UIKit

var greeting = "Hello, playground"

/*
 The sum of the squares of the first ten natural numbers is,

 The square of the sum of the first ten natural numbers is,

 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is
 .

 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 
 */

func squareIt(_ number: Int) -> Int {
    return number * number
}

var total1 = 0
var total2 = 0

for number in 1...100 {
    total2 += number
    total1 += squareIt(number)
    
}

var result = squareIt(total2) - total1

