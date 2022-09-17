import Foundation
 
struct Login {
    
    static  func loginPortal(){
        print("**************************************************************")
        print("Please enter your account to login:")
        print("**************************************************************")
        
        print("Username:")
        let username = readLine()
        guard let unwrapped_username = username else {
            print("Invalid Format")
            return }
        
        
        print("Password:")
        let Password = readLine()
        guard let unwrapped_password = Password else {
            print("Invalid Format")
            return
        }
        
        if Is_the_Acc_valid(username: unwrapped_username, password: unwrapped_password, usernames: Total_Acc) == true {
            print("**************************************************************")
            print("Welcome to Cornerstone International College of Canada.")
            print("**************************************************************")
            print("")
            print("")
            print("")
            print("")
           
            
        } else if Is_the_Acc_valid(username: unwrapped_username, password: unwrapped_password, usernames: Total_Acc) == false {
            print("**************************************************************")
            print("Your account does not exist. Please try again!")
            print("**************************************************************")
            loginPortal()
            
        }
        func Is_the_Acc_valid (username: String, password: String, usernames: [Accounts]  ) -> Bool {
            for user in usernames  {
                if user.Username == username && user.Password == password {
                    return true}
            }
            return false
        }
        
        var option : Int? = nil
        do{
            sleep(2)
            repeat {
                Login_menu.LoginMenu()
                print("Select an option")
                sleep(2)
                option = Int(readLine()!)
                
                if option == 1 {
                    MenuOption.EnrollmentCertificate(username: unwrapped_username)
                } else if option == 2 {
                    MenuOption.PrintCourses(username: unwrapped_username)
                } else if option == 3 {
                    MenuOption.printTranscript(username: unwrapped_username)
                } else if option == 4 {
                    MenuOption.PrintMyGPA(usernames: unwrapped_username)
                } else if option == 5{
                    MenuOption.rank(usernames: unwrapped_username)
                } else if option == 6{
                    MenuOption.AllCourses(usernames: unwrapped_username)
                } else if option == 7{
                    MenuOption.TotalStudents(usernames: unwrapped_username)
                } else if option == 8{
                    MenuOption.logout(usernames: unwrapped_username)
                } else if option == 9{
                    print("Programme Terminated")
                }
            }
             while (option != nil && option != 9 && option != 8)
            // option != nil && option != 9 || option != 8
        }}
    
}
