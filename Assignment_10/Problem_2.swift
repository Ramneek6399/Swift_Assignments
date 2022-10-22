//Use an extension to add the following functionality to the class you defined in Problem1.
//let _ = ep[4, "881299", [65, 22, 78]]
//The above code will add a student with student ID 4 and student number 881299 and grades [65, 22, 78] to
//the corresponding properties in the class.

class EductionPortal{
    
    //student numbers -> list of grades
    var marks:[String:[Int]]=["781214":[72,63,70], "341234":[80,46]]
    
    //student Ids -> numbers
    var ids:[Int:String]=[1:"781214", 2:"341234", 3:"568912"]
    
    //student numbers -> names
    var names:[String:String]=["781214":"Ali", "341234":"Peter",
                               "568912":"Sam"]
    
    
    subscript(StudentId: Int, NumOfGrades: Int) -> Double? {
        guard let id = self.ids[StudentId] else  {
            return nil
        }
        guard let grades = self.marks[id] else {
            return nil
        }
        var total = 0
        for i in 0..<NumOfGrades{
            total=grades[i]
        }
        return Double (total / NumOfGrades)
    }
    subscript(StudentNum : String) -> String?{
        return self.names[StudentNum] ?? "none"
    }
    subscript (StudentNum: Int) -> String? {
        guard let id = self.ids[StudentNum] else  {
            return nil
        }
        return self.names[id]
    }
    
}
extension EductionPortal{
    subscript( StudentId : Int, StudentNum: String, StudentMarks: [Int]) -> Void {
        self.marks[StudentNum] = StudentMarks
        self.ids[StudentId] = StudentNum
        self.names[StudentNum] = "Ramneek"
        
    }
}
func main(){
    
    var ep = EductionPortal()
    let _ = ep[4, "881299", [65, 22, 78]]
    //it should calculate the average of the first 3 grades of the student
    //whose ID is 1
    let st1Avg = ep[1, 3]
    
    //It should give the name of the student whose number is 781214
    let studentName = ep["781214"]
    
    //it should give the name of student whose ID is 2
    let studentNumber = ep[2]
    
    print(st1Avg ?? "none")
    print(studentName ?? "none")
    print(studentNumber ?? "none")
}
main()
