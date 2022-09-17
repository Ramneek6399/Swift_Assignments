// Write a function which takes no input parameter and allow the user to enter words as 
// many as the user wants until the user enters an empty word. When the user enters a word, 
// the function will add the word to a list which was originally empty. Before the function 
// adds the word to the list, it should check whether the same word had been already added 
// to the list or not. If not, then the word is added to the list and if yes, the word should not 
// be added to the list. The function will eventually return the list of words. 
// o Note: Only use List to solve this problem

var input: String? = nil
var List: Array<String> = Array()

repeat{
  print("Write a word: ")
  input = readLine()  
  if let input1 = input {
      if !List.contains(input1) && input1 != "empty"{
        List.append(input1)
    }
  } 
}
 while  input != "empty"

print(List)

