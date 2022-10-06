//Consider the following protocol:
//Protocol SomeProtocol1
//{
//  var property1: Int {get}
//  var property2: String {get set}
//  var property3: (()->Int)? {get}
//  sta?c var property4: String? {get set}
//  sta?c method1(arg param: Int)
//  method2(arg param: Int) -> Int?
//  muta?ng method3()-> String?
//}
//Now
//●Create a class called Class1 which confirms to the above protocol. Make some arbitrary
//implementations for the protocol’s requirements if needed.
//●Create a struct called Struct1 which confirms to the above protocol. Make some arbitrary
//implementations for the protocol’s requirements if needed.
//●Create an enum called Enum1 which confirms to the above protocol. Make some arbitrary
//implementations for the protocol’s requirements if needed.


protocol SomeProtocol1 {
    var property1 : Int {get}
    var property2 : String {get set}
    var property3 : (()->Int)? {get}
    static var property4 : String? {get set}
    static method1 (arg param : Int )
    func method2(arg parm: Int) -> Int?
    mutating func method3() -> String ?
}

class Class1: SomeProtocol1 {
    var property1 : Int {get}
    
    var property2 : String {get set}
    
    var property3 : (()->Int)? {get}
    
    static var property4 : String? {get set}
    
    static method1 (arg param : Int )
    
    func method2(arg parm: Int) -> Int?
    
    mutating func method3() -> String ?
    
    init(property1 : Int, property2 : String, Property3 : (()->Int) ) {
        self.property1 = property1
        self.property2 = property2
        self.property3 = property3
    }
    
}
func Property3()->Int{
    return 8
}
func  method2(arg parm: Int) -> Int? {
    if parm >5 {
        return parm
    } else return nil
}

func method3()-> String ? {
    print("write a word")
    guard let word = readLine() else {return}
        return word
}





