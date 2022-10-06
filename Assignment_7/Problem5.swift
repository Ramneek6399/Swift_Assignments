//Consider the following protocol:
//protocol SpecialStringProtocol
//{
//   //it checks whether a given condi?on is met on the current string
//  func verifiableStringForACondi?on( _  condi?onPredicate: String->Bool) -> Bool
//
///*it  checks  whether  the  string  is  a  double  repeated  string.  For  instance  abab  is  a  double
//repeated because the ab is repeated 2 ?mes. Or AliAli is also double repeated.*/
//  func repeatedString()-> Bool
//}
//Now,  extend  the  String  type  to  have  the  above  requirements  defined  in  the  above  protocol  and
//also write some test scenarios to show how it works



protocol SpecialStringProtocol {
    func verifiableStringForACondition( _  conditionPredicate: (String)->Bool) -> Bool
    
    func repeatedString()-> Bool
}

extension String : SpecialStringProtocol {
    
    func verifiableStringForACondition( _  conditionPredicate: (String)->Bool) -> Bool{
        return conditionPredicate(self)
    }
    
    func repeatedString()-> Bool {
        if self.count < 2 {
            return false
        }
        
        let word = self.count/2
        return self.prefix(word) == self.suffix(word)
    }
    
}

func main(){
    print("Beautiful".verifiableStringForACondition({a in a == "Beauty"}))
          print("Sat".verifiableStringForACondition({a in a == "Sat"}))
          print("abab".repeatedString())
          print("bybu".repeatedString())
}
main()
