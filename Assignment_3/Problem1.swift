func sum(num_1: Int, num_2: Int) -> (Int) {
    let result = num_1 + num_2
    return result
}
func substraction(num_1: Int, num_2: Int) -> (Int) {
    let result = num_1 - num_2
    return result
}
func multiplication (num_1: Int, num_2: Int) -> (Int) {
    let result = num_1 * num_2
    return result
}
func division (num_1: Int, num_2: Int) -> (Int) {
    let result = num_1 / num_2
    return result
}



func main(){
print("enter a number")
    let num1 :Int = Int(readLine()!)!

print("enter a number")
    let num2 : Int = Int(readLine()!)!

print("what operator ( +,_,/,*")
    let Operator : Character = Character(readLine()!)

if Operator == "+" {
    let result : Int = sum (num_1: num1, num_2: num2)
        print("Result \(result)")
}
if Operator == "-" {
    let result : Int = substraction (num_1: num1, num_2: num2)
        print("Result \(result)")
}
if Operator == "*" {
    let result : Int = multiplication (num_1: num1, num_2: num2)
        print("Result \(result)")
}
if Operator == "/" && num2 != 0 {
    let result : Int = division (num_1: num1, num_2: num2)
        print("Result \(result)")
}
    
if Operator == "/" && num2 == 0 {
        print(" -1")
}
    


}
 
main()
