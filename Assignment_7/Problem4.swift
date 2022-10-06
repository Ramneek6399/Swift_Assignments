//Imagine  you  design  a  mobile  view  or  a  webpage  which  contains  a  table  (Similar  to  the  picture
//below).  The  table  lists  the  students  in  our  program.  Create  an  application  using  the  delegate
//approach which given a list of students it create the table. At the minimum you need two classes
//View and Table.
//In order to create the table, the Table should know about the following information. Also Imagine
//the View has a list of students and it uses a Table object to show the list of Students.
//- The View class has the list of students.
//- The list of students is not fixed and could be arbitrary. In other word, if there are 10
//students in the list, then the table has 10 rows. If there are only 2 students in the list, then
//table shows 2 rows and so on.
//-
//- The Table class is responsible for showing the information in the table.
//- The Table requires the following information to be able to show the information
//-
//oStudent data. Each row represents one students
//oHow many students are in the list
//oThe fixed height of each row
//Ali David, 80
//Peter Jackson, 79
//Donald Trump, 81
//William Chen, 76
//Ana Leu, 82
//- As mentioned, each row in the table represents an item which contains the following
//properties 1- firstName 2-LastName 3- GPA
//Problem5
//Consider the following protocol:
//protocol SpecialStringProtocol
//{
//   //it checks whether a given condi?on is met on the current string
import Foundation
protocol viewdelegate: AnyObject {
    func prints()
}
class view {
    weak var delegate: viewdelegate?
    
    func prints(){
        guard let delegate = delegate else{
            print("no view")
            
            return
        }
        delegate.prints()
    }
}
class rows {
    var cols : [ String ]
    init(cols: [String]) {
        self.cols = cols
    }
}
class table: viewdelegate {
    var row  : [rows]
    init(row : [rows]) {
        self.row = row
    }
    func prints(){
        print("-----------------------------")
        print("The number of Students are \(self.row.count)")
        print("-----------------------------")
        for i in row{
            print(i.cols.joined(separator: ","))
            print("-----------------------------")
            
        }
    }
}
class Student {
    var FirstName : String
    var LastName : String
    var GPA : Double
    init(FirstName : String, LastName : String, GPA : Double) {
        self.FirstName = FirstName
        self.LastName = LastName
        self.GPA = GPA
    }
    func torow() -> rows{
        return rows(cols: ["\(self.FirstName), \(self.LastName), \(self.GPA)"])
    }
}
func main() {
    
    let S1 = Student(FirstName: "Ramneek", LastName: "K", GPA : 3.66)
    let S2 = Student(FirstName: "Saijal", LastName: "Arora", GPA : 4.11)
    let S3 = Student(FirstName: "Jaiveer", LastName: "Singh", GPA: 3.55)
    let Students = [S1,S2,S3].map({student in student.torow() })
    let tables = table (row : Students)
    let views = view()
    views.delegate = tables
    views.prints()
}
main()
