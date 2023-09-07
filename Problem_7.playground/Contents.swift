import Foundation

/*
 
 PROBLEM-7
 
 By listing the first six prime numbers: 2,3,5,7,11 and 13, we can see that the 6th prime is 13. What is the 10 001st prime number?

*/


var primeCount = 0

func isPrime(_ number: Int) -> Bool {

    if number == 2 {
        return true
    }

    let sqrtNumber = Int(sqrt(Double(number)))
    for i in 2...sqrtNumber + 1 {
        if number % i == 0 {
            return false
        }
    }

    return true
}


var number = 2
while true {

    if isPrime(number) {
        primeCount += 1
    }

    if primeCount == 10001 {
        print(number)
        break
    }

    number += 1
}







