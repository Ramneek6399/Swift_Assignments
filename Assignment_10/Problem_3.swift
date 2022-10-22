////Problem 3: Consider the following class. Complete the class definition such that fibo[n] generates the Fibonacci of
//number n. For instance fibo[5] generates the Fibonacci number for number 5.


class Fibonacci{
    
    subscript(n:Int)-> Int {
        return Ex.Fibo(n: n )
    }
    static subscript(n:Int)-> Int {
        return Ex.Fibo(n: n)
}
    class Ex {
        static func Fibo (n: Int) -> Int {
            if n == 0 { return 0}
            if n == 1 {return 1}
            return Fibo(n: n - 1) + Fibo(n: n - 2)
            
        }
    }
}
func main(){

let fibo = Fibonacci ()
print(fibo[5])


let fibo1 = Fibonacci[5]
    print(fibo1)
}
main()
