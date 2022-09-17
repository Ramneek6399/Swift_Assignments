//Define a struct called Circle with the following properties:
//1- Variable instance property called radius
//2- Constant Type property called PI (which is the PI number which is 3.14)
//3- Define a computed property called area. It represents the area of the circle.
//4- Write some examples to work with the Circle class.
struct Circle{
    var radius : Int
    let PI : Double = 3.14
    var Area : Double {
        get{ Double(radius*radius)*PI
        }
    }
}
func main(){
    let A = Circle(radius: 4)
    print("The Area of the circle with radius \(A.radius) is \(A.Area)")
    let B = Circle(radius: 7)
    print("The Area of the circle with radius \(B.radius) is \(B.Area)")
}
main()
