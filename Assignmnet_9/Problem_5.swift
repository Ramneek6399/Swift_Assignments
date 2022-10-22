//
//Write a generic class with the following three methods and properties:
//•    The class has a generic property of type List.
//•    addItemToList: add a generic object to the list
//
//
//•    removeItemFromTheList: remove a generic object from the list
//•  performOperation: Performs an operation on the list and returns a list of all items
//which satisfies a specific search criteria. If no item is found return nil.
class generic <Element: Comparable> {
    var list : [Element]
    init(list : [Element]) {
        self.list=list
    }
    func addItemToList (item : Element) {
        self.list.append(item)
    }
    func removeItemFromList(item : Element) {
        self.list = self.list.filter({ i in i != item })
    }
    func performOperation (Predicate: (Element) -> Bool ) -> [Element]?{
        let result = self.list.filter(Predicate)
        if self.list.count > 0 {
        return list
            }
        return nil
        }
    }
    
func main(){
    let list = [2,4,5,6,7,4,3,21]
    let instance = generic(list: list)
    instance.removeItemFromList(item: 7)
    print(instance.list)
    print(instance.performOperation(Predicate: {i in i == 0} ))
}

main()

