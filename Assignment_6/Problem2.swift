//Define an Enum, called AppleDevice with the following cases:
//- iPhoneXs
//- iPhoneXR
//- iPhone8
//- iPhone7
//
//
//Add a computed property to the enum which returns the price of each of the above item. Here is
//the list of price (in $):
//
//- iPhoneXs: 1000
//- iPhoneXR: 1100
//- iPhone8: 800
//- iPhone7: 750

enum AppleDevice{
    case iPhoneXs, iPhoneXR, iPhone8, iPhone7
    var Device: String {
        switch self {
        case .iPhoneXs:
            return "Price $1000"
        case .iPhoneXR:
            return "Price $1100"
        case .iPhone8:
            return "Price $800"
        case .iPhone7:
            return "Price $750"
        }
    }}

func main(price: AppleDevice){
    print(price.Device)
    }

main(price:AppleDevice.iPhoneXR)
main(price:AppleDevice.iPhone7)
main(price:AppleDevice.iPhone8)
main(price:AppleDevice.iPhoneXs)
