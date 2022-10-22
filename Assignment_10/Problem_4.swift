//Consider the class MyStudent below. Make changes to resolve the issues and make the code generate the
//result as stated.
class MyStudent{
    var firstName: String?
    var lastname: String?
    var id: Int = 1
    var address: String?
    
    init(_ firstName: String?, _ lastname: String? , _ id : Int , _ address: String? ){
        self.firstName=firstName
        self.lastname=lastname
        self.id = id
        self.address=address
    }
    subscript(Index: Int ) -> String? {
        get {
            switch Index
        {
        case 0:
            return self.firstName
            case 1 :
                return self.lastname
                case 2 :
                    return String(self.id)
                    case 3 :
                        return self.address
                
        default: return  nil
}}
        set (newValue){
                switch Index {
                case 0 :
                    return self.firstName = newValue
                    case 1 :
                        return self.lastname = newValue
                            case 3 :
                                return self.address = newValue
                            
                    
                default:
                    return
                    
                }
                
        }
    
} }
    
func main(){

let st = MyStudent("Sara", "Jones", 5 , "Vancouver")




print(st[0] ?? "none") //prints the first name of st
print(st[1] ?? "none" )//prints the last name of st
print(st[2] ?? "none") //prints the id of st
print(st[3] ?? "none") //print the address of st

st[0] = "Sarah" //change the first name to Sarah
st[1] = "Peter" //change the last name to Peter

//st[2] is readOnly and cannont change once assigned

st[3] = "Surrey" //change the address to Surrey
        print(st[0] ?? "none")
        print(st[1] ?? "none")
        print(st[2] ?? "none")
        print(st[3] ?? "none")
    }
main()

