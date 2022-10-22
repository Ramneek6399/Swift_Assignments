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
func main(){

var ep = EductionPortal() 
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
