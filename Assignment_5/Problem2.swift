//Let’s do some math:
//o Define a structure called point
//o Point has two integer variables called: x and y
//o Create a method called reset which set the x and y to 0
//o Define an instance method called printPoint, which takes a point and print its
//coordination in this format: the point is at coordinate [x,y] where x and y are the x
//and y coordination of the input point.
//o Define a static method called average which takes an array of points as well as a
//character. (so the method has 2 inputs). If the input charcter is ‘x’ then the
//function calculates the average of x coordination of all points in the array and
//returns it. Similarly if the input character is ‘y’ then it calculates the average of y
//
//
//coordination of the input points. If the character is not ‘x’ or ‘y’ then the function
//returns nil.
//o Define another static method called vectorAverage which takes an array of points.
//The method then calculates the average x and average y using the average
//function you defined above and create another point whose x is equal to average x
//and y is equal to average y and returns the resulting point.
//o Then use the printPoint method to print the resulting point from previous question
//(average point).
enum pointchar{
    case x,y
}

struct point{
    var x : Int
    var y : Int
    
    mutating func reset() {
        self.x = 0
        self.y = 0
    }
    func printPoint(point : point) {
        print("the point is at coordinate [\(point.x),\(point.y)] where \(point.x) and \(point.y) are the x and y coordination of the input point.")
    }
    static func average ( points : [point], pointchar: pointchar ) -> Int?{
        var sum = 0
        switch pointchar {
        case .x:
            for point in points{
                sum += point.x
            }
        case .y:
            for point in points {
                sum += point.y
            }
            
        }
        return sum / points.count
    }
    static func vectorAverage (points: [point]) -> point? {
        guard let x = average(points: points, pointchar: .x) else {
           return nil
        }
            guard let y = average(points: points, pointchar: .y) else {
                return nil
            }
        return point(x: x, y: y)
    }
    
}
func main() {
    let point1 = point(x: 0, y: 0)
    let point2 = point(x: 3, y: 6)
    let point3 = point(x: 7, y: -9)
    let point4 = point(x: -5, y: 7)
    let point5 = point(x: 6, y: 3)
    
    let points = [point1, point2, point3, point4, point5]
    
    guard let avePoint = point.vectorAverage(points: points) else {
        return
    }
    
    point.printPoint(point: avePoint)
}

main()


