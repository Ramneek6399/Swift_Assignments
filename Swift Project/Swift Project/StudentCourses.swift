class SCourses{
    var Username : String
    var Courses_ID : [String : String]
    
    init(Username: String, Courses_ID: [String : String]) {
        self.Username = Username
        self.Courses_ID = Courses_ID
    }
}
let S1 = SCourses(Username: "user1", Courses_ID: ["MADP101": "Objective-C", "MADP20244": "Project Management", "MADP301": "Android Programming","MADP401": "Web develpment"])
let S2 = SCourses(Username: "user2", Courses_ID: ["MADP101":"Objective-C", "MADP20244": "Project Management", "MADP301": "Android Programming"])
let S3 = SCourses(Username: "user3", Courses_ID: ["MADP101":"Objective-C", "MADP20244": "Project Management"])
let S4 = SCourses(Username: "user4", Courses_ID: ["MADP301": "Android Programming","MADP401": "Web develpment"])
let S5 = SCourses(Username: "user5", Courses_ID: ["MADP701": "Mobile App development", "MADP301": "Android Programming"])
let S6 = SCourses(Username: "user6", Courses_ID: ["MADP301":"Android Programming","MADP101":"Objective-C"])
let S7 = SCourses(Username: "user7", Courses_ID: ["MADP402": "IOS App development"])
let S8 = SCourses(Username: "user8", Courses_ID: ["MADP401":"Web develpment"])
                                                 
let IndividualCourses : [SCourses] = [S1,S2,S3,S4,S5,S6,S7,S8]
