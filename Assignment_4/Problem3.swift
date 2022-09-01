//oDefine an array whose type is String
//oThe size of the array is between 5-10 (pick an arbitrary number)
//oInitialize the array with some initial values.
//oThe possible values the items of the array can take is following
//▪sum
//▪division
//▪difference
//▪power
//▪multiplication
//oDefine a function for each of the above mathematical operations (sum, division,
//difference, complement, power, multiplication)
//oDefine a dictionary as following
//oThe type of key is String
//oThe type of the value is a function type (Int, Int) -> Double
//oDefine a function called calculator which takes the following as inputs:
//oTwo numbers
//oAn operation (which is either sum, division, difference, power or multiplication)
//oThe calculator function returns a tuple with two parameters: 1- the result of the operation
//and 2- the operation’s corresponding function. For instance, of the operation sent to the
//function is sum, and the two numbers are 10 and 20 the function will return a tuple which
//is (20, the sum function from the dictionary).
//oWrite a for-loop and iterate over the items of the array of the operations and call the
//calculator function for each item of the array.

import Foundation

let calculation: [String:(Int,Int) -> Double] = [
    "Sum": sum,
    "difference": difference,
    "multiplication": multiplication,
    "power": power,
    "division": division]

let operations = ["sum","difference","multiplication","power","division"]

func calculator ( a: Int, b : Int, operation: String) -> (Double, (Int , Int) -> Double)? {
    guard let calculation = calculation[operation] else {
        return nil
    }

    return (calculation(a, b), calculation)
}
            
func sum(a: Int, b: Int) -> Double {
        return Double (a+b)
    }
            
func difference ( a: Int, b: Int ) -> Double {
        return Double (a-b)
    }
            
func multiplication (a: Int, b: Int) -> Double {
        return Double (a*b)
    }
            
            
func power ( a: Int, b: Int ) -> Double {
        var result = a
    for _ in 1..<b {
        result *= a
    }
    return Double(result)
}
            
func division ( a: Int, b: Int ) -> Double {
        if b == 0 {
            return -1
        }
    else {
        return Double(a / b)
    }
}

            
func main() {
        for o in operations{
            if let result = calculator(a: 2, b: 3, operation: o){
                print(result)
            }
        }
    }
main()
            
            




