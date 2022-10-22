//
//
//Write a generic method to count the number of elements in a collection that have a
//specific property (for example, Students with GPA above average, Books with specific
//categories). You need to:
//•    Define and implement a generic class with a generic method called:
//countNumberOfElementsWithSpecificPr
//operty
//•  Design and implement a Swift class an element like Book, Student, Building,
//Account and define 3 properties for this class.
//•  Note: You might need to create classes or protocls in addition to the three
//classes mentioned above.
class Counter {
    static func SpecificProp <U>(List: [U], Predicate: (U)-> Bool) -> Int {
        var Total = 0
        for item in List{
            if Predicate(item){
                Total += 1
            }
        }
        return Total
    }
}
class Student {
    var Name:String
    var GPA:Double
    var Grade: Grade
    
    init(Name:String, GPA:Double, Grade:Grade){
        self.Name=Name
        self.GPA=GPA
        self.Grade=Grade
    }
    
}
enum Grade {
    case First, Second, Third, fourth, fifth, sixth
}


func main(){
    let Student1 = Student(Name: "Ramneek", GPA: 3.88, Grade: Grade.First)
    let Student2 = Student(Name: "Saijal", GPA: 2.55, Grade: Grade.Second)
    let Student3 = Student(Name: "Jaiveer", GPA: 1.99, Grade: Grade.fifth)
    let Student4 = Student(Name: "Bhavuk", GPA: 4.00, Grade: Grade.sixth)
    let Students = [Student1,Student2,Student3,Student4]
    
    print(Counter.SpecificProp(List: Students, Predicate: { Student in Student.GPA > 3.00 }))
        
    
}

main()
