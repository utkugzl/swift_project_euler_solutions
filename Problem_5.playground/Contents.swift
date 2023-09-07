import Foundation

/*
 
 PROBLEM-5
 
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20 ?
 
 */

func gcd(_ firstNumber: Int, _ secondNumber: Int) -> Int{
    
    var num1 = firstNumber
    var num2 = secondNumber

    while num2 != 0 {
        let temp = num2
        num2 = num1 % num2
        num1 = temp
    }
    
    return num1
}


func lcm(_ firstNumber: Int, _ secondNumber: Int) -> Int {
    return Int((firstNumber * secondNumber) / gcd(firstNumber, secondNumber))
}


func smallestDivisibleByRange(_ range: Int) -> Int {
    var result = 1
    for num in 2...range {
        result = lcm(result, num)
    }
    return result
}

print(smallestDivisibleByRange(20))


