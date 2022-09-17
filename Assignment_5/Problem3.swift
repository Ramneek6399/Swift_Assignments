//Define an enum called Calculator with 4 cases:
//o Sum, Subtraction, Multiplication and Division
//o The cases have an associated value which is of type (Int, Int)-> Int
//o Create a static method called calculate for the enum Calculator which takes three
//input parameters:
//§ num1: An integer
//§ num2: An integer
//§ opt: A Calculator enum
//o This function uses a switch statement based on the opt and each case return the
//result of calling the function which is the associated value of the case. For
//instance if the opt is Sum, the function will calculate the sum of the two input
//integers (num1 and num2)
//o Test: Write some test cases to test the enum and calling the calculate method.
//
enum Calculator {
    case Sum (Int, Int)
    case Subtraction (Int, Int)
    case Multiplication (Int, Int)
    case Division (Int, Int)

    static func calculate (opt : Calculator) -> Int {
        switch opt {
        case let .Sum(number1, number2):
            return number1 + number2
        case let .Subtraction(number1, number2):
            return number1 - number2
        case let .Multiplication(number1, number2):
            return number1 * number2
        case let .Division(number1, number2):
            if  number2 == 0 {
                return -1
            }
            return number1 / number2
        }
    }
}
    func main () {
        let Sum: Calculator = .Sum(3, 5)
        let Sub: Calculator = .Subtraction(7, 4)
        let Multi: Calculator = .Multiplication(2, 5)
        let Division: Calculator = .Division(12, 3)
        
        
        print(Calculator.calculate(opt: Sum))
        print(Calculator.calculate(opt: Sub))
        print(Calculator.calculate(opt: Multi))
        print(Calculator.calculate(opt: Division))
    }
main()

