// Write a Swift program which asks the user to enter a positive number called N, and 
// print the letter “A” for N times

print("Enter a number: ")
var x = Int(readLine()!)!

var str = String( repeating: "A", count: Int(x))
print(str)
