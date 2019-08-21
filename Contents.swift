import UIKit


//katie class
class Katie {
    //static properties
    static var maxPlayers = 12
    
    //propertis
    
    //initializers
    
    //functions
    
    //static functions
    
}
//people class
class People {
    
    // static properties
    
    //propertis
    var name: String
    var age: Int
    var homeTown: String
    var interests: [Interests]
    
    //initializers
    init(name: String, age: Int, homeTown: String) {
        self.name = name
        self.age = age
        self.homeTown = homeTown
        interests = []
    }
    
    //functions
    
    //static functions
    
    
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
        
        
        
        return intPool
    }
    
    //sub clases
    class sports: Interests {
        
    }
    
    class arts: Interests {
        
    }
    
    class tabletop: Interests {
        
    }
    //enums
    
    
}
