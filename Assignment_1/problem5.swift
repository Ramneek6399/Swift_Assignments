// Write a Swift program which asks the user to enter three number and finds the absolute 
// distance between the biggest and smallest entered numbers. 

print("Enter first number: ")
var x = Int(readLine()!)!
print("Enter second number: ")
var y = Int(readLine()!)!
print("Enter third number: ")
var z = Int(readLine()!)!

var A = max(x,y,z)
var B = min(x,y,z)

print("The absolute difference of the biggest and the smallest entered number is: ")
print(A-B)