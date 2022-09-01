//Write a function called sorter which receives two inputs parameters:
//1. A list of String called words
//2. A function type of type (String,String)->Bool called comparator
//And returns a list of String
//The function sorter, then will sort the list (array) of String using the criteria defined by the
//comparator parameter.
//func sorter(_ list:[String]?, criteria by: (String, String)->Bool)  -> [String]?{
//   guard let words = list else {
//      return nil
//   }
//sortedWords = words.sorter(criteria)
//   return sortedWords
//}
//Now call the sorter function defined above for the following list and criteria:
//1. List: [“one”, “two”, “three”, “four”, “five”]
//Criteria: Alphabetically Ascendingly
//2. List: [“one”, “two”, “three”, “four”, “five”]
//Criteria: Alphabetically Descending
//3. List: [“aa”, “aba”, “b”, “aabbb”}
//Criteria: Descending based on the length of the items
//

func sorter (words: [String], comparator: (String, String)-> Bool) -> [String]{
    return words.sorted(by: comparator)
}

func main(){
    let list1 = ["one", "two", "three", "four", "five"]
    print("Alphabetically Ascendingly : \(sorter (words: list1, comparator: {a, b in a <= b })) " )
    print("Alphabetically Descendingly : \(sorter (words: list1, comparator: {a, b in a >= b} ))")
                 
    let list2 = ["aa", "absdffd", "hhsk", "hsdkf", "pwewwsf"]
    print("length : \(sorter (words: list2, comparator : {a, b in a.count > b.count }))")
}
main()
