class Accounts {
    var Username : String
    var Password : String
    
    init(Username: String, Password: String) {
        self.Username = Username
        self.Password = Password
    }}
    let Username1 = Accounts(Username: "user1", Password: "password1")
    let Username2 = Accounts(Username: "user2", Password: "password2")
    let Username3 = Accounts(Username: "user3", Password: "password3")
    let Username4 = Accounts(Username: "user4", Password: "password4")
    let Username5 = Accounts(Username: "user5", Password: "password5")
    let Username6 = Accounts(Username: "user6", Password: "password6")
    let Username7 = Accounts(Username: "user7", Password: "password7")
    let Username8 = Accounts(Username: "user8", Password: "password8")
    
    let Total_Acc : [Accounts] = [Username1,Username2,Username3,Username4,Username5,Username6,Username7,Username8]

