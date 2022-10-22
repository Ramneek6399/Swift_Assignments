//Write two extensions for String
//• Extension1:
//o Add an instance method which checks whether the string is palindrome or not.
//The signature is: func isPalindrome () -> Bool
//o Add an instance method which returns the reverse of the string func reverseIt()->
//String
//
//• Extension2:
//o Add an instance computed property which represents number of digits in the
//string
//o add an instance computed property which represents the uppercase version of the
//string

 
extension String {
    func isPalindrome () -> Bool {
        return self == String(self.reversed())
    }
    func reserveIt() -> String {
        let word = String(self.reversed())
        return word
    }
}
extension String {
    var Count : Int {
        return self.count
    }
    var Uppercase : String {
        return self.uppercased()
        
    }
}
func main() {
    let M = "mama"
    print(M.isPalindrome())
    print(M.reserveIt())
    print(M.Count)
    print(M.Uppercase)
    
}
main()

