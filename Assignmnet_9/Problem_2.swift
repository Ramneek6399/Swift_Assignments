//Design and develop a class with a stored property of type an array of generic type. Then define a
//method which take a number (which is an integer). The method reads the items from index 0 until
//number-1 and adds them to a stack. (Please refer to the book for developing a stack). The method then
//will return the stack.
//
//Also come up with an example to show how you use this function. Use any arbitrary type to
//parameterize the array and stack.

struct Stack<Element> {
    var items : [Element] = []
    
    mutating func Add(item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
        
    }
    
}

class StackHandler<Element>{
    var list : [Element]
    var stack : Stack<Element> = Stack()
    
    init(list : [Element]){
        self.list = list
    }
    func AddStack (num: Int) -> Stack<Element>{
        if list.count < num {
            return self.stack
        }
        for i in 0..<num{
            self.stack.Add(item: list[i])
        }
        return self.stack
    }
}

func main(){
    let lists = [0,3,5,6,7,8,2,4,5,6]
    let ListHandler = StackHandler(list: lists)
    let StackHand = ListHandler.AddStack(num: 5)
    print(StackHand.items)
}

main()

