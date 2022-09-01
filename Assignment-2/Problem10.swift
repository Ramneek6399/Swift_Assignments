
// Write a Swift function which receives 3 lists as its input parameters and combines the 
// lists and remove repeated numbers from the combined list and return the combined list. 
// For instance, if the input is [1,2,3,4,2,3] and [3,4,6,7] and [-1,0,23,4] the result is 
// [1,2,3,4,6,7,-1,0,23] 
// - Note, the order the lists are combined together does not matter. 

var List1 = [1,2,5,3,3,2,7]
var List2 = [3,5,6,7,9,5,3]
var List3 = [-2,4,5,4,4,4]

let set1 = Set(List1)
let set2 = Set(List2)
let set3 = Set(List3)

print(Array(set1.union(set2).union(set3)))