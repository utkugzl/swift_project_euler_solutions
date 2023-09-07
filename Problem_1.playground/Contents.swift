import UIKit

/*
 PROBLEM-1
 
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3,5,6 and 9.
 The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

 
 */


var total = 0


for num in 1..<1000 {
    
    if num % 3 == 0 || num % 5 == 0 {
        total += num
    }
}

print(total)

// --------------------------------------------------------------------------------------

func calculate(limit: Int) -> Int {
    
    let range = 1..<limit
    
    let total = range.filter { $0 % 3 == 0 || $0 % 5 == 0 }.reduce(0, +)
    
    
    return total
}

print(calculate(limit: 1000))




