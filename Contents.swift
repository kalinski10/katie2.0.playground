import UIKit
import Foundation

//katie class
class Katie {
    //static properties
    static let players = Katie.numberOfPlayers()
    static let peopleArray = Katie.intro()
    
    //functions
    // print all the peole
    //with their interests
    func introduction(){
        for people in Katie.peopleArray {
            print(people.tellStory())
            for inter in people.interests {
                print("I am interested in \(inter.name), \(inter.description)")
            }
        }
    }
    //static functions
    //populate the data container with people
    static func intro() -> [People] {
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
class People {
    
    // static properties
    static let allPeople = People.generatePeople()
    
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
    
    //functions
    
    //static functions
    static func generatePeople() -> [People] {
        
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
    
    func tellStory() -> String {
        var story = "Hello, my name is \(name)! "
        
        story += "I am \(age) years old "
        
        story += "and I am from \(homeTown)!"
        
        return story
    }
}
// interests class
class Interests {
    
    // static properties
    static var allInterests = Interests.generateAllInt()
    //propertis
    var name: String
    var description: String
    //initializers
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
    //functions
    
    //static functions
    static func generateAllInt() -> [Interests] {
        
        var intPool = [Interests]()
        
        let football = Interests(name: "Football", description: "Football is played between 22 people and you need 2 goals and a sphere ball. \n")
        intPool.append(football)
        
        let videoGames = Interests(name: "Video Games", description: "Video games can be played in a variety of different ways. Firstly you have the different consoles such as PS4, xBox, Nintendo and PC, and seconldy you must choose between the hunderds of thousands of available games out there. \n")
        intPool.append(videoGames)
        
        let swimming = Interests(name: "Swimming", description: "Swimming is amazing because you can either do it competitively, for fun or for pure health purposes. You can swim in a lane using different techniques or you can just flop around with your friends and family. \n")
        intPool.append(swimming)
        
        let basketball = Interests(name: "Basketball", description: "Basketball is played in a 5-a-side court with a spehere ball and hoops. \n")
        intPool.append(basketball)
        
        let racing = Interests(name: "Racing", description: "Racing can be very dangerous, that is why its best done in a dedicated track and is usually similar type of cars are being used such as F1 cars, motorcycles etc. \n")
        intPool.append(racing)
        
        let computers = Interests(name: "Computers", description: "Computers are amazing you can literally do anything with them hence why someone can be so interested in them, the only limmit is your imagination. \n")
        intPool.append(computers)
        
        let painting = Interests(name: "painting", description: "Painting is so diverse you can paint on different canvasses, usiung different brushes and painting techniques. \n")
        intPool.append(painting)
        
        let wineTasting = Interests(name: "Wine tasting", description: "Wine tasting is usually an adult favourite, wine itself is the oldest alcohol known to man hence why its culture is so important to some. \n")
        intPool.append(wineTasting)
        
        let reading = Interests(name: "Reading", description: "Reading is a great way to escape reality, it relaxes you, improves your grammar, your overall knowledge of your language or perhaps a different language and mostly it allows you to fantasize. \n")
        intPool.append(reading)
        
        let writing = Interests(name: "Writing", description: "Writing is a great way to express yourself, your feelings and your thoughts whether its in your journal or perhaps in an online blog. Ultimately it's your choice. \n")
        intPool.append(writing)
        
        let music = Interests(name: "Music", description: "Music just like reading and writing is a great way to express your emotions, whether you are just listening to it or creating it. \n")
        intPool.append(music)
        
        let running = Interests(name: "Running", description: "Running is great because you can do it for relaxation or just pure health reasons. \n")
        intPool.append(running)
        
        let fishing = Interests(name: "Fishing", description: "Fishing is an activity you can do alone to relax from the somewhat stressful worl we line in and it can also be done in groups as a bonding mechanism. \n")
        intPool.append(fishing)
        
        let volunteer = Interests(name: "Volunteering", description: "You can volunteer in many different ways such as cooking or teaching or even building something and all for free, with that being said it feels your heart knowing you have done something for someone. \n")
        intPool.append(volunteer)
        
        let dancing = Interests(name: "Dancing", description: "Dancing is awesome for agility and its mostly fun. \n")
        intPool.append(dancing)
        
        let skiing = Interests(name: "Skiing", description: "Skiing is an amazing winter sport. \n")
        intPool.append(skiing)
        
        let golf = Interests(name: "Golf", description: "Golf is played with a small hard spherical balls and clubs of different sizes. \n")
        intPool.append(golf)
        
        let boardGames = Interests(name: "Boardgames", description: "There are so many board games to choose from and all have different purposes and ways to play, some classics include Monopoly, Cluedo and more. \n")
        intPool.append(boardGames)
        
        let cooking = Interests(name: "cooking", description: "Cooking is so diverse you can devided into so many categories and there are so many ways and things you can do. It is definetely an interest that never grows old. \n")
        intPool.append(cooking)
        
        let bowling = Interests(name: "bowling", description: "Bowling is player with a weighted ball which slides onto polished wood and the aim is to knock over all of the 10 pins. \n")
        intPool.append(bowling)
        
        let handCrafting = Interests(name: "Hand-crafting", description: "With handcrafting you can literally use anything to create small jewelery. \n")
        intPool.append(handCrafting)
        
        let magic = Interests(name: "Magic", description: "Magic tricks are mainly slight of hand but you need to be a showman to get people really excited. \n")
        intPool.append(magic)
        
        let boxing = Interests(name: "Boxing", description: "Boxing 2 people fighting with eachother with gloves to see you is the superior fighter this fight usually lasts 12 rounds, 3 minutes each round. \n")
        intPool.append(boxing)
        
        let mma = Interests(name: "Mixed Martial Arts", description: "MMA is the ultimate fighting sport because it includes all the fighting styles and is played between 2 people with fingerless gloves and last 3 rounds 3 to 5 minutes each round. \n")
        intPool.append(mma)
        
        return intPool
    }
    // generating interest for each person
    static func generateInt() -> [Interests]{
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
katie.introduction()
