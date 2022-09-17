// Write a Swift program which asks the user to enter two numbers called X and Y and 
// calculates the following: 
// 1. F(X,Y) = X*Y + Y^2 + abs(X-Y) where ^ is the power operation 
// 2. Find A such that the following equation holds: X^2+Y^3-A = 5
import Foundation

print("Enter a value for X: ")
var x = Int(readLine()!)!

print ("Enter a value for Y: ")
var y = Int(readLine()!)!


var A = x*y
var B = y^2
var C = (abs(x-y))

var D = Int(pow(Double(x), Double(2)))
var E = Int(pow(Double(y), Double(3)))


print("Value for F(X,Y) = X*Y + Y^2 + abs(X-Y):")
print (A + B + C)

print("Value for A where X^2+Y^3-A = 5" )
print( D + E - 5)