// Write a function which receives a list and returns a number. In the list, all numbers have 
// been repeated twice except one number that is repeated once. The function should return 
// the number that is repeated once and return it. 
var List = [2,8,2,8,5,9,9]

var dict: [Int:Int] = [:]


for i in List{
  if dict[i] == nil {
    dict[i] = 1
  }
  else{
    dict[i] = nil
  }
  print([Int](dict.keys)[0])
}