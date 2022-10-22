//esign a class called Shape which is the parent of the classes Rectangle, Square and Circle. Also
//define classes for Rectangle, Square and Circle to be child of the class Shape.
//The class shape has area and circumference.
//
//• Define area and circumference to be computed properties of the class Shape.
//• Use override to override the computed properties of the classes Rectangle, Square and
//Circle.
//• Provide some example to show your implementation works.
//
 

class Shape {
    func area() {}
    func perimeter() {}
    
    }
    


class Square : Shape{
    var length : Double
    init(length : Double){
        self.length = length
    }
    
    override func area () {
        print ("The area of the square  with leghth \(length) is \(length*length)")
    }
    override func perimeter() {
        print("The perimeter of the Square with length \(length) is \(4*length)")
    }
    
}
class Rectangle : Shape{
    
    var breadth : Double
    var length : Double
    init (breadth : Double, length : Double){
        self.breadth = breadth
        self.length = length
    }
    override func area() {
        print(" The area of the rectangle with the length \(length) and breadth \(breadth) is \(length * breadth)")
    }
    override func perimeter() {
        print("The perimeter of the rectangle with the length \(length) and breadth \(breadth) is \(2 * (length + breadth))")
    }
}
class Circle : Shape {
    var radius : Double
    let Pie = 3.14159
    
    init(radius : Double) {
        self.radius = radius
       
    }
    override func area() {
        print( " The area of the circle with the radius \(radius) is \(Pie * radius * radius)")
    }
    override func perimeter () {
        print("The circumferance od the circle with radius \(radius) is \(Pie * radius * 2)")
    }
}
func main(){
    let S1 = Square(length : 4.50)
    S1.area()
    S1.perimeter()
    
    let S2 = Square(length: 6.87)
    S2.area()
    S2.perimeter()
    
    let R1 = Rectangle(breadth: 2.5, length: 4.3)
    R1.area()
    R1.perimeter()
    
    let C1 = Circle(radius: 4.33)
    C1.area()
    C1.perimeter()
    
    
}
