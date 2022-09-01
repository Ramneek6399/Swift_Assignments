// Write a Swift function which receives 2 lists as its input parameters and checks whether 
// one of the list is included in another input list. A list A is considered to be included in 
// List B, if all elements in A are elements in B.
var list1:[Int] = [1,2,3,4,5,6,8,9]
var list2:[Int] = [4,5,6]

let List1 = Set(list1)
let List2 = Set(list2)

if List2.isSubset(of: List1){
  print("True")
} else {
  print("false")
}