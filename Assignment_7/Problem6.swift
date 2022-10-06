//Consider the following protocols:

protocol Protocol1 {
    var property1: Int? { get  }
}
protocol Protocol2 {
    var property2: String { get  }
}
protocol Protocol3 {
    var property3: (Int?)->String { get }
}
    //}
    //●Define an array called list1 whose elements are of a type (for instance a class) which
    //conforms to all above protocol.
    //●Using protocol composition, define a dictionary whose keys are of type String and the
    //values are of a type that conforms to all above (three above) protocols.
    
    class Class : Protocol1, Protocol2, Protocol3 {
        var property1: Int? {
            return 2
        }
        var property2: String {
            return "Yes"
        }
        var property3: (Int?)->String {
            return {a in a != nil ? String(a!) : "enter an Integer"}
        }
    }
    func main(){
        let list1 = [Class()]
        let Dic1 : [String :Protocol1 &  Protocol2 & Protocol3] = ["elements": Class()]
        
        
        print(list1[0].property1!)
        print(list1[0].property2)
        print(list1[0].property3(3))
        
        print(Dic1["elements"]!.property1!)
        print(Dic1["elements"]!.property2)
        print(Dic1["elements"]!.property3(3))
    }
    main()

