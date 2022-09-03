//For each of the variable/constant above define a dummy function and assign the corresponding
//variables or constants to them. For instance:
//•Variable called func0 whose type is String->Void
//•var func0: (String)->Void
//func fakeFuntion0 (s: String) -> Void {
//      print(s)
//}
//func0 = fakeFuntion0;

func ffunc1(a :Int, b: Int) -> Int {
    return (a - b)
}

func ffunc2(a :String) {
    print(a)
}

func ffunc3() -> Int{
    return 3
}

func ffunc4() ->[()->Void] {
    return[{print("Print")}]
}

func ffunc5([(Int)->Void]) -> [String]{
    return ["A","b","c"]
}

func ffunc6([(Int)->Void]) -> [(Int)->void]{
    return a
}

func ffunc7([(Int)->Void]?) -> [(Int)->void]?{
    return b
}

func ffunc8([(Int)->Void]?) -> [(Int)->void]?{
    return a
}

func ffunc9() -> ((Int)->Int, Int)?{
    return ({a in a}, 1)
}

func main(){
    let func1 : (Int, Int) -> Int
    func1 = ffunc1
    
    let func2 : (String) -> Void
    func2 = ffunc2
    
    let func3 : () -> Int
    func2 = ffunc3
    
    let func4 : () -> [() -> Void]
    func4 = ffunc4
    
    let func5 : ([(Int) -> Void]) -> [String])
    func5 = ffunc5
    
    
    let func6 : ([(Int) -> Void]) -> [(Int) -> Void]
    func6 = ffunc6
    
    let func7 : ([])
    func7 = ffunc7
    
    let func8 : ()
    func8 = ffunc8
    
    let func9 :
    func9 = ffunc9
    
    
    
    print(func1)
    print(
}


