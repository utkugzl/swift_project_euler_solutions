import UIKit
import Foundation


/*
 
 The prime factors of 13195 are 5,7,13 and 29. What is the largest prime factor of the number 600851475143 ?

 */




func isPrime(number: Int) -> Bool {
    var isPrime = true
    
    if number == 2 {
        return isPrime
    }
    
    for i in 2...Int(sqrt(Double(number))) {
    
        if number % i == 0 {
            isPrime = false
            break
        }
        
    }
    
    return isPrime
}



var largestPrime = 2
var number = 600851475143

for i in 2...Int(sqrt(Double(number))) {
    
    
    if number % i == 0 && isPrime(number: i) {
        largestPrime = i
    }
    
}

print(largestPrime)
