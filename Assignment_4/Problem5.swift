//Write a function called filter which has two input parameters:
//1. A list of numbers (positive integers)
//2. An array of predicates. (A predicate is a function type of type (Int)->Bool).
//And returns an Optional Array of Integer.
//Them define the following constant predicate and add them to a list of predicates.
//Predicate1: Returns true if a number is odd
//Predicate2: Returns true if a number is prime
//Predicate3: Returns true if a number is prime and odd
//Predicate4: Returns true if a number is divisible by 7
//Add the above predicates to a list of predicates.
//Then  implement  the  filter  function  mentioned  above.  The  filter  function  returns  the  list  of  all
//numbers from the input list on which all predicates return true.

func filter ( list : [Int], Predicate: [(Int)-> Bool]) -> [Int]? {
    var array : [Int] = []
    
    for num in list {
        var isalltrue = true
        for predicate in Predicate{
            if !predicate(num){
                isalltrue = false
            }
        }
        if isalltrue == true{
            array.append(num)
        }
        
    }
    return array
    
}
func isPrime (num: Int) -> Bool {
    
    if num < 2 {
        return false
    }
    for a in 2..<num{
        if num % a == 0 {
           return false
        }
        
    }
    return true
}
func main(){
    let list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    
    let Predicate1: (Int) -> Bool = { a in a % 2 != 0 }
    let Predicate2: (Int) -> Bool = isPrime
    let Predicate3: (Int) -> Bool = {a in a % 2 != 0 && isPrime(num: a)}
    let Predicate4: (Int) -> Bool = {a in a % 7 != 0}
    
    let predicates = [Predicate1, Predicate2, Predicate3, Predicate4]
    
    guard let result = filter(list: list, Predicate: predicates) else {
        return
    }
    print(result)
    
    
    
}
main()
