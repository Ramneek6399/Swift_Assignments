class Student {
    var  Username : String
    var StudentID : String
    var name : String
    var Gender : String
    var Grade : String
    var address : String
    var admission_year : String
    var Courses : [String]
    
    init(Username: String, StudentID: String, name: String, Gender: String, Grade: String, address: String, admission_year: String, Courses: [String]) {
        self.Username = Username
        self.StudentID = StudentID
        self.name = name
        self.Gender = Gender
        self.Grade = Grade
        self.address = address
        self.admission_year = admission_year
        self.Courses = Courses
    }
    
    }
let student1 = Student(Username: "user1" , StudentID: "7813007", name: "Ramneek", Gender: "male", Grade: "90", address: "850 West Hastings, Vancouver", admission_year: "2012", Courses: ["MADP101 : Objective-C","MADP20244 - Project Management","MADP301 : Android Programming","MADP401 : Web develpment"])
let student2 = Student(Username: "user2", StudentID: "7813008", name: "Saijal", Gender: "male", Grade: "33", address: "855 West Vancouver, Vancouver", admission_year: "2012", Courses: ["MADP101 : Objective-C","MADP20244 - Project Management","MADP301 : Android Programming"])
let student3 = Student(Username: "user3", StudentID: "7813009", name: "Jaiveer", Gender: "male", Grade: "66", address: "854 West Vancouver, Vancouver", admission_year: "2012", Courses: ["MADP101 : Objective-C","MADP20244 - Project Management"])
let student4 = Student(Username: "user4", StudentID: "7813010", name: "Sai", Gender: "male", Grade: "99", address: "853 West Vancouver, Vancouver", admission_year: "2012", Courses: ["MADP301 : Android Programming","MADP401 : Web develpment"])
let student5 = Student(Username: "user5", StudentID: "7813011", name: "Jaivy", Gender: "male", Grade: "85", address: "852 West Vancouver, Vancouver", admission_year: "2012", Courses: ["MADP701 : Mobile App development","MADP301 : Android Programming"])
let student6 = Student(Username: "user6", StudentID: "7813012", name: "Shubh", Gender: "male", Grade: "60", address: "851 West Vancouver, Vancouver", admission_year: "2012", Courses: ["MADP301 : Android Programming","MADP101"])
let student7 = Student(Username: "user7",StudentID: "7813013", name: "Jazz", Gender: "male", Grade: "62", address: "850 West Vancouver, Vancouver", admission_year: "2012", Courses: ["MADP402 : IOS App development"])
let student8 = Student(Username: "user8", StudentID: "7813014", name: "Samira", Gender: "female", Grade: "60", address: "856 West Vancouver, Vancouver", admission_year: "2012", Courses: ["MADP401: Web develpment"])

let Students : [Student] = [student1,student2,student3,student4,student5, student6, student7, student8]



func Total_Students(){
    var Number = 1
    for i in Students{
        print("\(Number) . " + i.name + " : " +  i.StudentID)
        Number += 1
    }
}
