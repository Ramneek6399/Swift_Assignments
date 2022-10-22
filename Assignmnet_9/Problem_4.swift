//Write a generic method in a structure to exchange the positions of two different elements in an array.
//• define a method as an instance method.
//• define the same method as an static method
struct exchange <Element>{
    var list : [Element]
    mutating func Add (item : Element){
        self.list.append(item)
    }
    mutating func pop(item : Element) -> Element {
        return self.list.removeLast()
    }
    mutating func swap(from : Int, To : Int) {
        let Something = self.list[from]
        self.list[from] = self.list[To]
        self.list[To] = Something
    }
    static func Swaps(list: inout [Element], from : Int, To : Int) {
        let Something = list[from]
        list[from] = list[To]
        list[To] = Something
    }
}
func main(){
    var Swap1 = exchange<Int>(list: [0,35,5,4,3,2,44])
    print(Swap1.list)
    Swap1.swap(from: 1, To: 6)
    print(Swap1.list)
    
    
    var Swap2 = [0,35,5,4,3,2,44]
    exchange.Swaps(list: &Swap2, from: 0, To: 1)
    print(Swap2)
}
main()

