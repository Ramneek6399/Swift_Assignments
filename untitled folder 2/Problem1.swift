struct Tweeter {
    var tweeterID : String
    var numOfFollowers : Int
    var numOfFollowing : Int
    var joinedTweeter : Int
    init(tweeterID : String , numOfFollowers : Int, numOfFollowing : Int, joinedTweeter : Int){
        self.tweeterID=tweeterID
        self.numOfFollowers=numOfFollowers
        self.numOfFollowing=numOfFollowing
        self.joinedTweeter=joinedTweeter
    }
}
func main(){
    let id1 = Tweeter(tweeterID: "@BarackObama", numOfFollowers: 129600000, numOfFollowing: 594500, joinedTweeter: 2007)
    let id2 = Tweeter(tweeterID: "@JoeBiden", numOfFollowers: 28800000, numOfFollowing: 47, joinedTweeter: 2007)
    let id3 = Tweeter(tweeterID: "@elonmusk", numOfFollowers: 47900000, numOfFollowing: 103, joinedTweeter: 2009)
    let id4 = Tweeter(tweeterID: "@BillGates", numOfFollowers: 53800000, numOfFollowing: 274, joinedTweeter: 2009)
    let id5 = Tweeter(tweeterID: "@ladygaga", numOfFollowers: 83900000, numOfFollowing: 120400, joinedTweeter: 2008)
    let id6 = Tweeter(tweeterID: "@rihanna", numOfFollowers: 102100000, numOfFollowing: 1015, joinedTweeter: 2009)
    let id7 = Tweeter(tweeterID: "@MichelleObama", numOfFollowers: 20300000, numOfFollowing: 15, joinedTweeter: 2011)
    
    var list : [Tweeter] = [id1, id2, id3, id4, id5, id6, id7]
    
    print("Sorting by num of Followers")

    let sortedlist = list.sorted(by : ({ $0.numOfFollowers > $1.numOfFollowers}) )
    print(sortedlist)
    print("Sorting by Twitter Id Alphabetically")
    let sorted2 = list.sorted(by : ({ $0.tweeterID > $1.tweeterID}) )
    print(sorted2)
    
    
}
main()

