//
//  Transcript.swift
//  Swift Project
//
//  Created by Ramneek Kaur on 2022-09-15.
//
struct Transcript: Equatable{
    var username: String
    var Courses: [String : Int]
    var name : String
    var GPA: Double {
        get {
            var sum = 0
            for i in Courses.values{
                sum += i
            }
            return Double (sum / Courses.count)
        }
    }
            
        

    init(username: String, Courses: [String : Int], name: String) {
        self.username = username
        self.Courses = Courses
        self.name = name
    }
    
}
let Transcript1 = Transcript(username: "user1", Courses: ["MADP101 - Objective-C": 70,"MADP20244 - Project Management": 66,"MADP301 : Android Programming": 88,"MADP401 - Web develpment": 98], name: "Ramneek")
let Transcript2 = Transcript(username: "user2", Courses: ["MADP101 - Objective-C": 88,"MADP20244 - Project Management": 67,"MADP301 : Android Programming":88], name: "Saijsl" )
let Transcript3 = Transcript(username: "user3", Courses: ["MADP101 - Objective-C":55,"MADP20244 - Project Management":77], name: "Jaiveer" )
let Transcript4 = Transcript(username: "user4", Courses: ["MADP301 - Android Programming":88,"MADP101 - Objective-C":99], name: "Sai" )
let Transcript5 = Transcript(username: "user5", Courses: ["MADP701 - Mobile App development":78,"MADP301 - Android Programming":90], name: "Jaivy")
let Transcript6 = Transcript(username: "user6", Courses: ["MADP301 - Android Programming":90,"MADP101 - Objective-C":88], name: "Shubh")
let Transcript7 = Transcript(username: "user7", Courses: ["MADP402 - IOS App development":60], name:" Jazz" )
let Tranxcript8 = Transcript(username: "user8", Courses: ["MADP401 - Web develpment":90], name: "Samira" )

let Transcripts : [Transcript] = [Transcript1,Transcript2,Transcript3,Transcript4,Transcript5,Transcript6,Transcript7,Tranxcript8]



        
    
