//Design and implement a function which receives a number as its first input parameter and
//a format (which is either SHAPE1 or SHAPE2 or SHAPE3) as the second input
//parameter and prints the following patterns. See the examples below:
//-Example: number: 5 format: SHAPE1
//*****
// ***
//  *
//-Example: number: 5 format: SHAPE2
//*****
//****
//***
//**
//*
//-Example: number: 5 format: SHAPE3
//*
//**
//***
//****
//*****


func Shape_3(Num : Int) {
    for i in 1..<Num {
        for _ in 1...i {
            print ("*", terminator: "")
            
        }
        print("")
    }
    
}
func Shape_1(Num : Int) {
    for i in 1...Num {
        for _ in stride (from: i, to: Num+1, by: 1 ){
            print ("*", terminator: "")
        }
        print("")
    }
}
func Shape_2(Num : Int) {
    for i in Num...1{
    for _ in stride( from: Num, to: 0, by: -2){
            print ( terminator : " ")
}
for _ in Num...1 {
    print ("*", terminator : " ")
}
print(" ")
    }}
func main() {
    print("Enter a num : ")
    let stars = Int(readLine()!)!
    print("which shape - Shape1, Shape2, Shape3")
    let shape = readLine()
    
    if shape == "Shape3"{
        Shape_3(Num: stars)}
        
    if shape == "Shape1"{
    Shape_1(Num: stars)
        }
    if shape == "Shape2"{
        Shape_2(Num: stars)
}
}
main()

