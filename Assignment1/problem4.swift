// Write a Swift program that prompts (ask) the user to enter his/her first-name and last-
// name. The Swift program, the concatenate the first-name to last-name and print the 
// following message: 
// o. Hi [first-name last-name], I hope you are doing well! 

print("Enter your first name: ")
var x = readLine()!

print("Enter your last name: ")
var y = readLine()!

print("Hi " + x + y + ", I hope you are doing well!")