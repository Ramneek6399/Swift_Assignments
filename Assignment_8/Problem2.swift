
class Product {
    var productID : Int
    var productName : String
    var productPrice : Double
    var productMadeInCountry : String
    
    
    init(productID : Int, productName : String, productPrice : Double, productMadeInCountry : String){
        self.productID=productID
        self.productName=productName
        self.productMadeInCountry=productMadeInCountry
        self.productPrice=productPrice
}
    
}
class Drink : Product {
    var isDrinkDiet : Bool
    var drinkSize : Int
    
    init(productID: Int, productName: String, productPrice: Double, productMadeInCountry: String, isDrinkDiet : Bool, drinkSize : Int){
        self.isDrinkDiet = isDrinkDiet
        self.drinkSize = drinkSize
        super.init(productID: productID, productName: productName, productPrice: productPrice, productMadeInCountry: productMadeInCountry)
    }
    
}

class Food : Product {
    var FoodCalorie : Int
    var foodSize : Int
    var foodIngredients : [String]
    
    init(productID: Int, productName: String, productPrice: Double, productMadeInCountry: String, FoodCalorie : Int, foodSize : Int,  foodIngredients : [String]) {
        self.FoodCalorie=FoodCalorie
        self.foodSize=foodSize
        self.foodIngredients=foodIngredients
        
        super.init(productID: productID, productName: productName, productPrice: productPrice, productMadeInCountry: productMadeInCountry)
    }
    
}
class cloth : Product {
    var clothMaterials : [Material]
    
    init(productID: Int, productName: String, productPrice: Double, productMadeInCountry: String, clothMaterials : [Material]){
        
        self.clothMaterials=clothMaterials
        super.init(productID: productID, productName: productName, productPrice: productPrice, productMadeInCountry: productMadeInCountry)
    }
}
class Material {
    var MaterialCode : Int
    var MaterialName : String
    init( MaterialCode : Int, MaterialName : String){
        self.MaterialCode=MaterialCode
        self.MaterialName=MaterialName
    }
}
class ShoppingCart{
    var items : [Product] = []
    func add(item : Product) {
        items.append(item)
    }
    func TotalAmount (){
        var TotalAmount = 0
        for i in items {
            TotalAmount += Int(i.productPrice)
        }
        print("The Total Amount is \(TotalAmount)")
    }
    func prints() {
        print("The Purchased items are :")
        for item in items{
            print(item.productName)
        }
    }
}



func main(){
    Product(productID: 110, productName: "Diet Pepsi", productPrice: 2, productMadeInCountry: "USA")
    let ShoppingCarts = ShoppingCart()
    for i in 1...3 {
        let pepsi = Drink(productID: 412, productName: "Pepsi", productPrice: 2, productMadeInCountry: "USA", isDrinkDiet: false, drinkSize: 150)
        ShoppingCarts.add(item: pepsi)
    }
    for i in 1..<2{
        let Ginger_Zero = Drink(productID: 412, productName: "Ginger Zero", productPrice: 3, productMadeInCountry: "Canada", isDrinkDiet: true, drinkSize: 200)
        ShoppingCarts.add(item: Ginger_Zero)
    }
    for i in 1..<3{
        let Chicken = Food(productID: 100, productName: "Chicken", productPrice: 32, productMadeInCountry: "Canada", FoodCalorie: 350, foodSize: 4, foodIngredients: ["Chicken","oil","chees"])
        ShoppingCarts.add(item: Chicken)
    }
    for i in 1..<3 {
        let Pasta = Food(productID: 101, productName: "Pasta", productPrice: 54, productMadeInCountry: "Canada", FoodCalorie: 250, foodSize: 3, foodIngredients: ["Pasta","meet","Spinach"])
        ShoppingCarts.add(item: Pasta)
    }
    let Cotton = Material(MaterialCode: 10, MaterialName: "Cotton")
    let Nylon = Material(MaterialCode: 11, MaterialName: "Nylon")
    for i in 1..<2{
        let TShirt = cloth(productID: 701, productName: "T-shirt", productPrice: 15, productMadeInCountry: "China", clothMaterials: [Cotton,Nylon])
        ShoppingCarts.add(item: TShirt)
    }
    ShoppingCarts.prints()
    print("The Total bill is :")
    ShoppingCarts.TotalAmount()
    
    
}
main()

