class TotalCourses {
    var Courses : [String : String]
    
    init(Courses : [String : String]){
        self.Courses =  Courses
        
    }
    
}
func PrintAllCourses(){
    let Courses = ["MADP101": "Objective-C", "MADP20244": "Project Management", "MADP301": "Android Programming","MADP401": "Web develpment","MADP701": "Mobile App development", "MADP402": "IOS App development"]
    for i in Courses {
        print("\(i.key) : \(i.value)")
    }
    
}
