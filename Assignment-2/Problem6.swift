// Write a function which has no input parameter. The function asks the user to enter 
// numbers. The user can enter repeated numbers but if the user entered a number which 
// was already entered, the function will provide an error message to the user and ask the 
// user to enter another one. The user can enter numbers as long as s/he has not entered 0. 
// Once a 0 is entered, the function returns the sum of all distinct numbers the user had 
// entered.
var List: Array<Int> = Array()
var inp: String? = nil
repeat{
  print("enter a non reapeated number or enter 0 to get the sum")
  inp = readLine()
  if let input = Int(inp!) {
  if !List.contains(input){
    List.append(input)
  }else {
    print("Error(repeated number)")
  }}
}while inp != "0"
 var sum = 0
  for i in List{
  sum += i
}
print("Sum of the numbers is :")
print(sum)

