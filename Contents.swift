import UIKit
import Foundation

//katie class
class Katie {
    //static properties
    private static let players = Katie.numberOfPlayers()
    private static let availablePlayers = Katie.populate()
    public var pairs = genPairs()
    //functions
    // everyone introduce themselves
     public func introduction() {
        for people in Katie.availablePlayers {
            print(people.tellStory())
        }
    }
    // generate pairs func
    static func genPairs() -> [String] {
        var m = 0
        var n = 0
        var peeps = Katie.availablePlayers // create referemce to the peoples array
        var peeps2 = Katie.availablePlayers // create a second reference to the peoples array
        var inPairs = [String]()
        
        for i in peeps { // itirate through all people
            for x in peeps2 { // itirate through all people
                var z = 0
                while i.interests.count >= z + 1 { // loop until you've gone though all the interest
                    var y = 0
                    while x.interests.count >= y + 1 { // loop until you go through all the interests
                        if i.interests[z].name != x.interests[y].name && i.name != x.name { // compare the intersts
                            inPairs.append("\(i.name) and \(x.name) are a pair, because \(i.name) is interested in \(i.interests[z].name) and \(x.name) is interested in \(x.interests[y].name)")
                            m = z
                            n = y
                            y = x.interests.count - 1
                            z = i.interests.count - 1
                        }
                        y += 1
                    }
                    z += 1
                }
            }
            peeps.remove(at: m)
            peeps2.remove(at: n)
        }
    return inPairs
   }
    
    
  public func tellInterests() {
        var allPeeps = Katie.availablePlayers
        while allPeeps.count > 0 {
            let randPeepsIndex = Int(arc4random_uniform(UInt32(allPeeps.count)))
            if allPeeps[randPeepsIndex].interests.count == 0 {
                allPeeps.remove(at: randPeepsIndex)
            } else {
                let randIntIndex = Int(arc4random_uniform(UInt32(allPeeps[randPeepsIndex].interests.count)))
                print("my name is \(allPeeps[randPeepsIndex].name) and I am interested in \(allPeeps[randPeepsIndex].interests[randIntIndex].name). \(allPeeps[randPeepsIndex].interests[randIntIndex].description2)")
                allPeeps[randPeepsIndex].interests.remove(at: randIntIndex)
            }
        }
        
    }
    
    //static functions
    //populate the data container with people
    public static func populate() -> [People] {
        var pool = [People]()
        var peeps = People.allPeople
        
            for _ in 1...Katie.players {
           
                let randomIndex = Int(arc4random_uniform(UInt32(peeps.count)))
                pool.append(peeps[randomIndex])
                peeps.remove(at: randomIndex)
            }
        return pool
    }
    //generate a random even number
    private static func numberOfPlayers() -> Int{
        var number = Int(arc4random_uniform(uint(People.allPeople.count))) + 1
        if number % 2 != 0 {
            while number % 2 != 0 {
            number = Int(arc4random_uniform(uint(People.allPeople.count))) +  1
                }
            }
        return number
    }
}


//people class
public class People {
    
    // static properties
    public static let allPeople = People.generatePeople()
    
    //propertis
    var name: String
    var age: Int
    var homeTown: String
    var interests: [Interests]
    
    //initializers
    init(name: String, age: Int, homeTown: String, interests: [Interests]) {
        self.name = name
        self.age = age
        self.homeTown = homeTown
        self.interests = interests
    }
        
    //static functions
    public static func generatePeople() -> [People] {
        
        var options = [People]()
        
        let rob = People(name: "Rob", age: 22, homeTown: "Surrey", interests: Interests.generateInt())
        options.append(rob)
        
        let kalin = People(name: "Kalin", age: 22, homeTown: "Sofia", interests: Interests.generateInt())
        options.append(kalin)
        
        let james = People(name: "James", age: 23, homeTown: "Birmingham", interests: Interests.generateInt())
        options.append(james)
        
        let jaidan = People(name: "Jaidan", age: 24, homeTown: "Cambridge", interests: Interests.generateInt())
        options.append(jaidan)
        
        let mary = People(name: "Mary", age: 22, homeTown: "Manchester", interests: Interests.generateInt())
        options.append(mary)
        
        let amber = People(name: "Amber", age: 25, homeTown: "Bolton", interests: Interests.generateInt())
        options.append(amber)
        
        let delicia = People(name: "Delicia", age: 32, homeTown: "Wolverhampton", interests: Interests.generateInt())
        options.append(delicia)
        
        let zenon = People(name: "Zenon", age: 33, homeTown: "Newcastle", interests: Interests.generateInt())
        options.append(zenon)
        
        let keisha = People(name: "Keisha", age: 18, homeTown: "Altrincham", interests: Interests.generateInt())
        options.append(keisha)
        
        let becky = People(name: "Becky", age: 58, homeTown: "Sunderland", interests: Interests.generateInt())
        options.append(becky)
        
        let reece = People(name: "Reece", age: 65, homeTown: "Cardiff", interests: Interests.generateInt())
        options.append(reece)
        
        let alex = People(name: "Alex", age: 12, homeTown: "Bournemoth", interests: Interests.generateInt())
        options.append(alex)
        
        return options
        
    }
    
    public func tellStory() -> String {
        var story = "Hello, my name is \(name)! "
        
        story += "I am \(age) years old "
        
        story += "and I am from \(homeTown)!"
        
        return story
    }
}
// interests class
public class Interests {
    
    // static properties
    private static var allInterests = Interests.generateAllInt()
    
    //propertis
    var name: String
    var description2: String
    
    //initializers
    init(name: String, description2: String) {
        self.name = name
        self.description2 = description2
    }
    
    //static functions
    static func generateAllInt() -> [Interests] {
        
        var intPool = [Interests]()
        
        let football = Interests(name: "Football", description2: "Football is played between 22 people and you need 2 goals and a sphere ball.")
        intPool.append(football)
        
        let videoGames = Interests(name: "Video Games", description2: "Video games can be played in a variety of different ways. Firstly you have the different consoles such as PS4, xBox, Nintendo and PC, and seconldy you must choose between the hunderds of thousands of available games out there.")
        intPool.append(videoGames)
        
        let swimming = Interests(name: "Swimming", description2: "Swimming is amazing because you can either do it competitively, for fun or for pure health purposes. You can swim in a lane using different techniques or you can just flop around with your friends and family.")
        intPool.append(swimming)
        
        let basketball = Interests(name: "Basketball", description2: "Basketball is played in a 5-a-side court with a spehere ball and hoops.")
        intPool.append(basketball)
        
        let racing = Interests(name: "Racing", description2: "Racing can be very dangerous, that is why its best done in a dedicated track and is usually similar type of cars are being used such as F1 cars, motorcycles etc.")
        intPool.append(racing)
        
        let computers = Interests(name: "Computers", description2: "Computers are amazing you can literally do anything with them hence why someone can be so interested in them, the only limmit is your imagination.")
        intPool.append(computers)
        
        let painting = Interests(name: "painting", description2: "Painting is so diverse you can paint on different canvasses, usiung different brushes and painting techniques.")
        intPool.append(painting)
        
        let wineTasting = Interests(name: "Wine tasting", description2: "Wine tasting is usually an adult favourite, wine itself is the oldest alcohol known to man hence why its culture is so important to some.")
        intPool.append(wineTasting)
        
        let reading = Interests(name: "Reading", description2: "Reading is a great way to escape reality, it relaxes you, improves your grammar, your overall knowledge of your language or perhaps a different language and mostly it allows you to fantasize.")
        intPool.append(reading)
        
        let writing = Interests(name: "Writing", description2: "Writing is a great way to express yourself, your feelings and your thoughts whether its in your journal or perhaps in an online blog. Ultimately it's your choice.")
        intPool.append(writing)
        
        let music = Interests(name: "Music", description2: "Music just like reading and writing is a great way to express your emotions, whether you are just listening to it or creating it.")
        intPool.append(music)
        
        let running = Interests(name: "Running", description2: "Running is great because you can do it for relaxation or just pure health reasons.")
        intPool.append(running)
        
        let fishing = Interests(name: "Fishing", description2: "Fishing is an activity you can do alone to relax from the somewhat stressful worl we line in and it can also be done in groups as a bonding mechanism.")
        intPool.append(fishing)
        
        let volunteer = Interests(name: "Volunteering", description2: "You can volunteer in many different ways such as cooking or teaching or even building something and all for free, with that being said it feels your heart knowing you have done something for someone.")
        intPool.append(volunteer)
        
        let dancing = Interests(name: "Dancing", description2: "Dancing is awesome for agility and its mostly fun.")
        intPool.append(dancing)
        
        let skiing = Interests(name: "Skiing", description2: "Skiing is an amazing winter sport.")
        intPool.append(skiing)
        
        let golf = Interests(name: "Golf", description2: "Golf is played with a small hard spherical balls and clubs of different sizes.")
        intPool.append(golf)
        
        let boardGames = Interests(name: "Boardgames", description2: "There are so many board games to choose from and all have different purposes and ways to play, some classics include Monopoly, Cluedo and more.")
        intPool.append(boardGames)
        
        let cooking = Interests(name: "cooking", description2: "Cooking is so diverse you can devided into so many categories and there are so many ways and things you can do. It is definetely an interest that never grows old.")
        intPool.append(cooking)
        
        let bowling = Interests(name: "bowling", description2: "Bowling is player with a weighted ball which slides onto polished wood and the aim is to knock over all of the 10 pins.")
        intPool.append(bowling)
        
        let handCrafting = Interests(name: "Hand-crafting", description2: "With handcrafting you can literally use anything to create small jewelery.")
        intPool.append(handCrafting)
        
        let magic = Interests(name: "Magic", description2: "Magic tricks are mainly slight of hand but you need to be a showman to get people really excited.")
        intPool.append(magic)
        
        let boxing = Interests(name: "Boxing", description2: "Boxing 2 people fighting with eachother with gloves to see you is the superior fighter this fight usually lasts 12 rounds, 3 minutes each round.")
        intPool.append(boxing)
        
        let mma = Interests(name: "Mixed Martial Arts", description2: "MMA is the ultimate fighting sport because it includes all the fighting styles and is played between 2 people with fingerless gloves and last 3 rounds 3 to 5 minutes each round.")
        intPool.append(mma)
        
        return intPool
    }
    // generating interest for each person
    public static func generateInt() -> [Interests]{
        var allIntPool = allInterests
        var specInt = [Interests]()
        let numOfInterests = Int.random(in: 1 ... 10) // choosing a random number of interests
        
        for _ in 1 ... numOfInterests {
            let randIndex = Int(arc4random_uniform(UInt32(allIntPool.count)))
            specInt.append(allIntPool[randIndex])
            allIntPool.remove(at: randIndex)
        }
        
        return specInt
    }
}

let katie = Katie()
var allPairs = katie.pairs
katie.introduction()
katie.tellInterests()
print("THERE ARE A TOTAL OF \(allPairs.count) POTENTIAL PAIRS!")
for i in allPairs {
    print(i)
}
