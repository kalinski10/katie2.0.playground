import Foundation

//people class
public class People {
    // static properties
    public static let allPeople = People.generatePeople()
    //propertis
    public var name: String
    public var age: Int
    public var homeTown: String
    public var interests: [Interests]
    //initializers
    public init(name: String, age: Int, homeTown: String, interests: [Interests]) {
        self.name = name
        self.age = age
        self.homeTown = homeTown
        self.interests = interests
    }
    //static functions
    public static func generatePeople() -> [People] {
        var options = [People]()
        let rob = People(name: "Rob", age: 22, homeTown: "Surrey", interests: Interests.generateInt())
        let kalin = People(name: "Kalin", age: 22, homeTown: "Sofia", interests: Interests.generateInt())
        let james = People(name: "James", age: 23, homeTown: "Birmingham", interests: Interests.generateInt())
        let jaidan = People(name: "Jaidan", age: 24, homeTown: "Cambridge", interests: Interests.generateInt())
        let mary = People(name: "Mary", age: 22, homeTown: "Manchester", interests: Interests.generateInt())
        let amber = People(name: "Amber", age: 25, homeTown: "Bolton", interests: Interests.generateInt())
        let delicia = People(name: "Delicia", age: 32, homeTown: "Wolverhampton", interests: Interests.generateInt())
        let zenon = People(name: "Zenon", age: 33, homeTown: "Newcastle", interests: Interests.generateInt())
        let keisha = People(name: "Keisha", age: 18, homeTown: "Altrincham", interests: Interests.generateInt())
        let becky = People(name: "Becky", age: 58, homeTown: "Sunderland", interests: Interests.generateInt())
        let reece = People(name: "Reece", age: 65, homeTown: "Cardiff", interests: Interests.generateInt())
        let alex = People(name: "Alex", age: 12, homeTown: "Bournemoth", interests: Interests.generateInt())
        options.append(rob)
        options.append(kalin)
        options.append(james)
        options.append(jaidan)
        options.append(mary)
        options.append(amber)
        options.append(delicia)
        options.append(zenon)
        options.append(keisha)
        options.append(becky)
        options.append(reece)
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
