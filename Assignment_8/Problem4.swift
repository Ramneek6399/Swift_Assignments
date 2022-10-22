//sing an enum called StringError define the following 3 errors:
//• InvalidStringFormatForIntConversionError
//• InvalidEmailFormatError
//• NotValidPassword(numberNeeded: Int)
// 
//609 West Hastings Street, Vancouver, BC, Canada V6B 4W4    T: 604-620-1111
//www.ciccc.ca    info@ciccc.ca
// 
//Write an extension for String and add the following methods:
// 
//• A method which converts the String to an Int if possible. The method will throws an error
//called InvalidStringFormatForIntConversion if it is not possible to convert the String to
//an integer. Only a string whose all characters are digits is allowed to be converted to an
//Int, otherwise it cannot be converted.
//• A method which checks whether the String has a valid email format. A valid email format
//is like aaaa@b.c. If the string does not have a valid email format, the method will returns
//an error called InvalidEmailFormatError
//• A method which checks wither the string is long enough to be a valid password. A valid
//password is at least 8 characters long. If the string is less than 8 characters, then the
//method will throw an error and indicates how many more characters is needed in order to
//have a valid password. For instance if the string has 6 characters, then it needs 2 more
//characters in order to be a valid password.
// 
// 
//Design a class called TestExtension. The class has 3 static methods each of which test the above
//scenarios and handle the errors using try/catch block. The methods are
//• func convertStringToInt (word: String) -> Int?
//• func isItAnEmail(word: String)-> Boolean
//• func validatePassword(password: String)-> Boolean
// 
// 
//Write some tests in playground to show how the above classes works. 
