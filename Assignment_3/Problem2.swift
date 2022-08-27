//Design and implement a function which receives a number as its input parameter and
//checks whether the number is a prime number or not. If it is a prime number the
//algorithm returns true and if not the algorithm will return false.

func primeNum (num : Int) -> (Bool) {
     var result = true
    
    for i in 2...num-1 {
        if num % i == 0 {
            result = false
        }
        
    }
    return result
    
}
 
func main(){
    print("Write a number: ")
    let num = Int(readLine()!)!
    
    print(primeNum(num: num))
}

main()
