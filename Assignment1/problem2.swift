// Write a Swift program which asks the user to enter four numbers called X1, X2, X3 and 
// X4 and calculates the following: 
// o. Maximum (X1, X2, X3, X4) – Minimum (X1, X2, X3, X4) + X1^X2 + 
// abs(X3-X4)

import Foundation
print( "Enter first number: ")
 var x1 = Int(readLine()!)!
print( "Enter second number: ")
 var x2 = Int(readLine()!)!
print( "Enter third number: ")
 var x3 = Int(readLine()!)!
print( "Enter fourth number: ")
 var x4 = Int(readLine()!)!

var A = max(x1, x2, x3, x4)
var B = min(x1, x2, x3, x4)
var C = Int(pow(Double(x1),Double(x2)))
var D = (abs(x3-x4))

print("Value for  Maximum (X1, X2, X3, X4) – Minimum (X1, X2, X3, X4)+X1^X2+abs(X3-X4): ")
print( A - B + C + D)
