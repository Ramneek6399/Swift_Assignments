//  Write a function which receives a list and returns True if the list is “Partially sorted” and 
// returns False if the list is not “Partially Sorted”. A list is “Partially sorted” if and only if 
// there exists an item in the list which if removed, the list will become a sorted list. For 
// instance the following list is “Partially sorted”: 
// - [1,2,5,10,6,8,9] This is partially sorted because it is not originally sorted but if we remove 
// 10 from the list, then the list is sorted. 

var List2:[Int] = [5,3,9,8,5,4]

for (index,_) in List2.enumerated(){
  var List3 = List2
  List3.remove(at: index)
  if List3 == List3.sorted() {
    print("True")
    break
  }else if index == List3.count-1 {
    print("False")
  }
  
}