//Create a Swift playground. Create a swift class called CarRepairServiceProvider which
//provides a car repair service. This class requires some information to work:  a)
//Description issue and b) car model.
//2. Create another service provider class called, HomeServiceProvider which performs three
//(3) types of home services 1) CookingService 2) WashingService 3) BabySittingService.
//Create an enum called HomeService with the above items. This class also requires some
//information to work: 1- service type (any of the above services) and 2- address the
//service should be done in.
//3. Create a new service provider Swift class called, StudentServicesProvider which provide
//one student service. It needs the following requirements: 1- student service description an
//4. Define a clientA class who is interested in CarRepairServiceProvider.
//5. Define a clientB class who is interested in HomeServiceProvider.
//6. Define a clientC class who is interested in StudentServicesProvider.
//7. Define a clientD class who is interested in all above services.
//8. Use delegation pattern to implement this problem.

protocol carRepairService {
    var  descriptionIssue : String {get}
    var  carModel : String {get}
}

protocol carRepair : AnyObject{
    func serviceStart(Model : String)
    func repair(descriptionIssue : String)
    func serviceEnd()
}

class carRepairs :  carRepair {
    func serviceStart( Model : String ) {
        print("The service started on the car model \(Model)")
    }
    func repair(descriptionIssue : String) {
        print(" The repair with \(descriptionIssue) issue")
    }
    func serviceEnd(){
        print(" The service is ended")
}
}

class A : carRepairService{
    var descriptionIssue: String
    var carModel: String
    
    init( descriptionIssue: String , carModel: String ) {
        self.descriptionIssue = descriptionIssue
        self.carModel = carModel
    }
    weak var delegate : carRepair?
    
    func servicing(){
        
    guard  let Delegate = delegate else {return }
        Delegate.serviceStart( Model : self.carModel)
        Delegate.repair(descriptionIssue : self.descriptionIssue)
        Delegate.serviceEnd()
    }
}
enum Services : String {
    case cookingService, washingService, babySitingService
}
protocol HomeServicesProtocol {
    var address : String {get}
    var serviceType : Services {get}
}

protocol ServiceDelegate: AnyObject{
    func ServiceStarted(service : String )
    func service (service : Services)
    func ServiceEnded (service :Services )
    
}
class Service : ServiceDelegate {

    func ServiceStarted(service : String) {
        print("arrived at \( service )")
    }
    func service (service : Services) {
        print ("service chose is \(service)")
    }
    func ServiceEnded (service : Services) {
        print("service \(service) completed ")
}}
class B : HomeServicesProtocol {
    var address: String
    var serviceType: Services
    
    init(address: String, serviceType : Services){
        self.address = address
        self.serviceType = serviceType
    }
    weak var delegate: ServiceDelegate?
    func Services(){
    guard let Delegate = delegate else{return}
        Delegate.ServiceStarted(service : self.address )
        Delegate.service(service :  self.serviceType)
        Delegate.ServiceEnded (service : self.serviceType)
    }
}
protocol StudentServiceProviderProtocol{
    var Description : String { get}
}
protocol studentService : AnyObject{
    func serviceStart(service: String)
    func service(service: String)
    func serviceEnd(service: String)
}
class StudentServiceProvider : studentService {
    func serviceStart(service: String) {
        print("Started \(service)")
    }
    func service(service: String) {
        print("Doing \(service)")
        }
    func serviceEnd(service: String) {
        print("Ended \(service)")
        }
        
    }
class C :  StudentServiceProviderProtocol {
    var Description : String
    init( Description : String ) {
        self.Description = Description
    }
    weak var delegate : studentService?
    func service(){
    
    
    guard let Delegate = delegate else {return}
    
    Delegate.serviceStart(service: self.Description)
        Delegate.service(service: self.Description)
        Delegate.serviceEnd(service: self.Description)
    
}}
class D {
    func AskForCarService(descriptionIssue : String  , carModel : String ) {
        let ClientCar = A(descriptionIssue : descriptionIssue , carModel : carModel)
        let ClientsCar = carRepairs()
        ClientCar.delegate = ClientsCar
        ClientCar.servicing()
    }
    func AskForHomeService(address : String, serviceType : Services){
        let Home = B(address: address, serviceType: serviceType)
        let Homes = Service()
        Home.delegate = Homes
        Home.Services()
    }
    func AskForStudentservices(Description : String){
        let Student = C(Description: Description)
        let Students = StudentServiceProvider()
        Student.delegate = Students
        Student.service()
    }
}
func main(){
    print("Student A")
    let ClientA =  A(descriptionIssue : "Loose Brakes" , carModel : "Honda Civic")
    let ClientsA = carRepairs()
    ClientA.delegate = ClientsA
    ClientA.servicing()
    print("--------------------------------------------------")
    
    print("Student B")
    let ClientB = B(address: "1455 model Town Phase 3", serviceType: .washingService)
    let ClientsB = Service()
    ClientB.delegate = ClientsB
    ClientB.Services()
    print("--------------------------------------------------")
    
    print("Student C")
    let ClientC = C(Description: "Cleaning of the house")
    let ClientsC = StudentServiceProvider()
    ClientC.delegate = ClientsC
    ClientC.service()
    print("--------------------------------------------------")
    
    print("Student D")
    let ClientD = D()
    ClientD.AskForCarService(descriptionIssue : "Washing The Car" , carModel : "Dodge")
    ClientD.AskForHomeService(address : "13027 106 Surrey BC", serviceType: .cookingService)
    ClientD.AskForStudentservices(Description : "Washing Clothes")
    
    
}
main()
    
    
}

