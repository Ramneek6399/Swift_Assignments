//Given a string of lowercase letters in the range ascii[a-z], determine the index of a character that can be removed to make the string a palindrome. There may be more than one solution, but any will do. If the word is already a palindrome or there is no solution, return -1. Otherwise, return the index of a character to remove.

func palindrome (){
    print("Write a word to check if its palindrome after removing a letter")
    var word = readLine()
    guard let unwrapped_word = word else{
        print("invalid input")
    return
    }
    var reversed_word = String(unwrapped_word.reversed())
    if unwrapped_word != reversed_word{
        for i in 1...unwrapped_word.count{
         var r = unwrapped_word.index(unwrapped_word.startIndex, offsetBy: 1)
       let newW = unwrapped_word.remove(at: r)
        if newW == newW.reversed(){
            print("The word is a Palindrome after removing the letter \(unwrapped_word(i))")
        
        }
    }
    } else {
        print("-1") }}
    

