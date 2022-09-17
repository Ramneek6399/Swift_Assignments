//Define a struct classed Student. Each student is defined by the following attributes:
//o firstName
//o lastName
//o address
//o Year of birth
//o gpa
//- Define a class called Classroom with an instance property which is an array of Students.
//- Define a static method called printStudent for the struct Student to print the student’s
//information (firstName, lastName, address, year of birth and gpa)
//- Define an instance method for the class Classroom, called generateList. This method
//create 10 instances of the class students with some arbitrary information and add them to
//the list of students.
//- Define an instance method for the class Classroom, called getHighestGpa. This methods
//will search into the array of Students and returns the student with the highest GPA. The
//method also prints the information of the student with the highest GPA.

struct Students {
    static let firstnames  = ["Ramneek", "Sam", "Ary", "peter", "Saijal", "Jas", "jaivy"]
                              
    static let lastnames  = ["Kaur", "Singh", "Sharma", "Brar", "Kullar", "Jain", "chen"]
                              
    static let addresses = ["Punjab", "Vancouver", "Toronto", "Calgary", "Winnipeg", "Surrey"]
                            
    let firstname : String
    let lastname  : String
    let address : String
    let Year_of_Birth : Int
    let GPA : Double

    
static func printstudent ( student: Students ) {
        print("Name: \(Students.firstname) \(Students.lastname) \n Address: \(Students.addresses)\n Year_of_birth \(Students.Year_of_Birth) \n GPA \(Students.GPA)")
    }
    
}
class Classroom {
    var Student : [Students] = []
        
        
        func generatelist(){
            for i in 0..<10{
        
        self.Student.append(
            Students(
                firstname: Students.firstnames[Int.random(in: 0..<Students.firstnames.count)],
                lastname: Students.lastnames[Int.random(in: 0..<Students.lastnames.count)],
                address: Students.addresses[Int.random(in: 0..<Students.addresses.count)],
                Year_of_Birth: Int.random(in: 1990...2010),
                GPA: Double.random(in: 0...5)))
    }
                            }
        func highestGPA () -> Students? {
            
            if self.Student.isEmpty{
                return
            }
            var highestGPA = self.Student[0].GPA
        
            var StudentsHighestGPA = self.Student[0]
            
            for student in self.Student {
                if highestGPA < Students.GPA{
                    highestGPA = Students.GPA
                    StudentsHighestGPA = Student
                }
            }
            Students.printstudent(Student: StudentsHighestGPA)
        return StudentsHighestGPA
        }}
        func main(){
            let classrooms = classroom()
            classrooms.generatelist()
            let _ = classroom.highestGPA
        }
main()
