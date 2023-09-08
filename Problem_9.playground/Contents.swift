import Foundation

/*
 
 PROBLEM-9
 
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 
                   a^2 + b^2 = c^2.
 

 For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
 
 There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.
 
*/


outerLoop: for a in 1..<1000 {
    for b in 1..<(1000 - a) {
        var c = 1000 - a - b
        if c*c == a*a + b*b {
            print(a*b*c)
            break outerLoop
        }
    }
}

// As you can see i wrote outerLoop before for loop. The reason is this solution writes the correct answer to the console 2 times.
// Because 3^2 + 4^2 = 5^2 and 4^2 + 3^2 = 5^2 the same.

