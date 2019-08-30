import UIKit
import Foundation

//katie class
class Katie {
    //static properties
    static let players = Katie.numberOfPlayers()
    static let peopleArray = Katie.intro()
    //propertis
   
    //initializers
    
    //functions
    static func intro() -> [People] {
        var pool = [People]()
        for _ in 1...Katie.players {
           
            var peeps = People.allPeople
            let randomIndex = Int(arc4random_uniform(UInt32(People.allPeople.count)))
            pool.append(peeps[randomIndex])
            peeps.remove(at: randomIndex)
        }
        return pool
    }
    
    //static functions
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
    var interests = Interests.allInterests
    
    //initializers
    init(name: String, age: Int, homeTown: String) {
        self.name = name
        self.age = age
        self.homeTown = homeTown
    
    }
    
    //functions
    
    //static functions
    static func generatePeople() -> [People] {
        
        var options = [People]()
        
        let rob = People(name: "Rob", age: 22, homeTown: "Surrey")
        options.append(rob)
        
        let kalin = People(name: "Kalin", age: 22, homeTown: "Sofia")
        options.append(kalin)
        
        let james = People(name: "James", age: 23, homeTown: "Birmingham")
        options.append(james)
        
        let jaidan = People(name: "Jaidan", age: 24, homeTown: "Cambridge")
        options.append(jaidan)
        
        let mary = People(name: "Mary", age: 22, homeTown: "Manchester")
        options.append(mary)
        
        let amber = People(name: "Amber", age: 25, homeTown: "Bolton")
        options.append(amber)
        
        let delicia = People(name: "Delicia", age: 32, homeTown: "Wolverhampton")
        options.append(delicia)
        
        let zenon = People(name: "Zenon", age: 33, homeTown: "Newcastle")
        options.append(zenon)
        
        let keisha = People(name: "Keisha", age: 18, homeTown: "Altrincham")
        options.append(keisha)
        
        let becky = People(name: "Becky", age: 58, homeTown: "Sunderland")
        options.append(becky)
        
        let reece = People(name: "Reece", age: 65, homeTown: "Cardiff")
        options.append(reece)
        
        let alex = People(name: "Alex", age: 12, homeTown: "Bournemoth")
        options.append(alex)
        
        return options
        
    }
    
    func tellStory() -> String {
        var story = ""
        
        story += "Hello, my name is \(name)! "
        
        story += "I am \(age) years old "
        
        story += "and I am from \(homeTown)"
        
        return story
    }
}
// interests class
class Interests {
    
    // static properties
    static let allInterests = Interests.generateInt()
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
    static func generateInt() -> [Interests] {
        
        var intPool = [Interests]()
        
        let football = Interests(name: "Football", description: "The game is played between 22 people and you need 2 goals and a sphere ball")
        intPool.append(football)
        
        return intPool
    }
}
    //sub clases
    class sports: Interests {
        
    }
    
    class arts: Interests {
        
    }
    
    class tabletop: Interests {
        
    }

let katie = Katie()
for people in Katie.peopleArray {
    print(people.tellStory())
}

