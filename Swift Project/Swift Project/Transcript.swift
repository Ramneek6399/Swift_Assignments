//
//  Transcript.swift
//  Swift Project
//
//  Created by Ramneek Kaur on 2022-09-15.
//
struct Transcript: Equatable{
    var username: String
    var Courses: [String : Int]
    var GPA: Double {
        get {
            var sum = 0
            for i in Courses.values{
                sum += i
            }
            return Double (sum / Courses.count)
        }
    }
            
        

    init(username: String, Courses: [String : Int]) {
        self.username = username
        self.Courses = Courses
    }
    
}
let Transcript1 = Transcript(username: "user1", Courses: ["MADP101": 70,"MADP20244": 66,"MADP301": 88,"MADP401": 98])
let Transcript2 = Transcript(username: "user2", Courses: ["MADP101": 88,"MADP20244": 67,"MADP301":88])
let Transcript3 = Transcript(username: "user3", Courses: ["MADP101":55,"MADP20244":77])
let Transcript4 = Transcript(username: "user4", Courses: ["MADP301":88,"MADP101":99])
let Transcript5 = Transcript(username: "user5", Courses: ["MADP701":78,"MADP301":90])
let Transcript6 = Transcript(username: "user6", Courses: ["MADP301":90,"MADP101":88])
let Transcript7 = Transcript(username: "user7", Courses: ["MADP402":60])
let Tranxcript8 = Transcript(username: "user8", Courses: ["MADP401":90])

let Transcripts : [Transcript] = [Transcript1,Transcript2,Transcript3,Transcript4,Transcript5,Transcript6,Transcript7,Tranxcript8]



        
    
