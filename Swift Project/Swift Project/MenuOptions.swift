import Foundation
struct MenuOption{

   static func EnrollmentCertificate(username : String){
        for user in Students {
            if user.Username == username{
                print("""
            Dear Sir/Madam,
            
            This is to certify that \(user.name) with student id \(user.StudentID) is a student at grade \(user.Grade) at CICCC. He was admitted to our college in \(user.admission_year) and has taken \(user.Courses.count) course(s). Currently he resides at 850 West Vancouver, Vancouver.
                If you have any question, please don’t hesitate to contact us.
                Thanks,
                Williams,
            """)}
            }}
   static func PrintCourses(username : String){
        for user in Students {
            if user.Username == username  {
                print("""
                Hi \(user.name),
                You have taken the following courses:
                \(user.Courses)
                """)}
            
        }}
    static func printTranscript(username : String){
        for user in Transcripts{
            if user.username == username{
            print("""
            Hi \(user.username)
            Here is your transcript:
            \(user.Courses) \n
            YOUR GPA IS: \(user.GPA)
    """)
            }
        }
    }
    static func PrintMyGPA(usernames : String){
        for user in Transcripts{
            if user.username == usernames{
                print("""
            Hi \(user.username),
            Your GPA is \(user.GPA)
            """)
            }
        }
    }
    
    static func rank( usernames : String){
        let SortedForRanks : [Transcript] = Transcripts.sorted(by: {$0.GPA > $1.GPA })
        for user in SortedForRanks {
            if user.username == usernames{
                guard let index = SortedForRanks.firstIndex(of: user) else {return}
                let Rank = index + 1
                print("Hi, \(user.username)")
                print("The Gpa of \(user.username) is \(user.GPA) and therefore the Rank is \(Rank)")
            }
            
        }
        
    }
                        
    static func AllCourses(usernames : String){
        print("""
        The following courses are offered in CICCC:
        """)
        PrintAllCourses()
    }
    static func TotalStudents(usernames : String){
        for user in Students {
            if user.Username == usernames  {
                print("""
                There are \(Students.count) students in CICCC as following:
                """)}}
            Total_Students()
        }
                            
    static func logout(usernames : String){
            Login.loginPortal()
                            }
                        }
                    
                
            
