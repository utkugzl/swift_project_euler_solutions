import UIKit

/*
 
 A palindromic number reads the same both ways. The largest palindrome made from the product of two
 2-digit numbers is 9009 = 91 x 99.
 
 Find the largest palindrome made from the product of two 3-digit numbers.
 
 */

func isPalindrome(number: Int) -> Bool {
    var firstNumberStr = String(number)
    var secondNumberStr = String(firstNumberStr.reversed())
    
    return firstNumberStr == secondNumberStr
}

var bigPolindrome = 0
var a = 0
var b = 0

for i in 100...999 {
    for j in 100...999 {
        let number = i * j
        if isPalindrome(number: number) && number > bigPolindrome {
            bigPolindrome = number
            a = i
            b = j
        }
    }
}

print(bigPolindrome)
print("Number one is \(a)")
print("Number two is \(b)")





