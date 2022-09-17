//Define a class student as following:
//• The class has the following stored properties:
//o Name: which is a string
//o Scores: which is an array of course scores.
//• The class also has a computed property called average which is the average of courses’
//scores.
//• Define an array of arbitrary students. (Instance of students with random names and
//scores)
//• Find the top rank student

class Student {
    var name : String
    var Scores : [Int]
    var average : Double {
        get {
            var sum = 0
            for i in Scores{
                sum += i
            }
            return Double(sum / Scores.count) }
    }
    
    init(name : String, Scores : [Int]){
        self.name = name
        self.Scores = Scores
}
}
    let S1 = Student(name: "Ramneek", Scores: [88,56,78,99,76])
    let S2 = Student(name: "Satvir", Scores: [67,89,55,99,77])
    let S3 = Student(name: "Jazz", Scores: [55,77,43,99,88])
    let S4 = Student(name: "Ivy", Scores: [88,99,65,78,78])
    let S5 = Student(name: "preet", Scores: [78,99,90,89,78])
    
    let list : [Student] = [S1,S2,S3,S4,S5]
    
    func topRanked(list:[Student]){
        var top_average = list[0].average
        var top_avearge_student = list[0]
        for i in list{
            if top_average < i.average{
                top_average = i.average
                top_avearge_student = i
        }
    }
        print("The top avearge student \(top_avearge_student.name) with average \(top_average)")
        
    }

    func main(){
       topRanked(list: list)
        
        
    }
main()
    
