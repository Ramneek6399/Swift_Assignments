// Write a function which lets the user enter English words. The user can keep entering 
// English words as long as the user has not entered the word “exit”. Once the user enters 
// “exit” the function will return and print the list of all distinct words starts with English 
// alphabets. Like: 
// A: Ali, apple, ... 
// B: Bob, book 
// ... until Z

func dict() -> [Character:[String]] {
var dict: [Character:[String]] = [:]
for i in 65...90 {
  dict[Character(UnicodeScalar(UInt8(i)))] = []
}
  return dict
}

func words() -> [Character:[String]]{
  var result: [Character:[String]] = dict()
  print("enter a word: ")
  var word = readLine()!
 while word != "exit"{
   let uppercased = word.uppercased()
   let firstletter = (uppercased.first!)
        if  result[firstletter] != nil && !result[firstletter]!.contains(word) {
          result[firstletter]!.append(word)
        }
   
 
   print("enter a word: ")
    word = readLine()!
}

  return result 
  
}

func main() {
  print(words())
}

main()
