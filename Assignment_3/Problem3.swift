//Design and implement a function with one parameter which is an integer and finds the
//next prime number which is bigger than the given input parameter and returns it. Reuse
//(call) the function you have defined for Problem 2.

func primeNum(num : Int) -> (Bool) {
     var result = true
    
    for i in 2...num-1 {
        if num % i == 0 {
            result = false
        }}
        
    
    return result
}
    
func nextPrimenumber(num: Int) -> Int {
        var next_prime = num + 1
        while !primeNum(num: next_prime) == true {
            next_prime += 1
        }
        
        return next_prime
        
        
    }
    func main(){
        print(" enter a number to get a next prime a number ")
        let num = Int(readLine()!)!
        
        print(nextPrimenumber(num: num))
    }
main()

