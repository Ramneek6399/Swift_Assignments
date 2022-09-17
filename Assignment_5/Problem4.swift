//Create a class called Search which has an array of numbers as its instance variable.
//- Create an instance method for this class called, reset which create an empty array and
//return void.
//- Create an instance method for this class called randomFill which generates 10 random
//Integer and add them to the array of numbers and returns void (which is the instance
//variable of the class).
//- Create a static method called linearSearch which takes a list of Integer and a number. It
//check whether the number exist in the list of not.

//

class Search {
    var numbers: [Int]
    
    init() {
        self.numbers = []
    }
    
    func reset(){
        self.numbers = []
    }
    func randomfill() {
        for _ in 0..<10{
            self.numbers.append(Int.random(in: 0...100))
        }
    }
    func linearSearch ( list : [Int], number: Int) -> Bool {
        for i in list{
            if i == number {
                return true
            }
            
        }
        return false
    }
    
    
}
func main () {
    let S = Search()
    S.randomfill()
    print(S.numbers)
    print(S.linearSearch(list: S.numbers, number: 3))
}
main()
