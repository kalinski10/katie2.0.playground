import UIKit
import Foundation
//katie class
public class Katie {
    //static properties
    private static let players = Katie.numberOfPlayers()
    private static let availablePlayers = Katie.populate()
    public var pairs = genPairs()
    // everyone introduce themselves
     public func introduction() {
        for people in Katie.availablePlayers {
            print(people.tellStory())
        }
    }
    // generate pairs func
    static func genPairs() -> [String] {
        var peeps = Katie.availablePlayers // create reference to the peoples array
        var peeps2 = Katie.availablePlayers // create a second reference to the peoples array
        var inPairs = [String]()
        var j = 0
        while j != peeps.count {
            var n = 0
            for i in peeps { // itirate through all people
                while n == 0 {
                    var p = 0
                    for x in peeps2 { // itirate through all people
                        var z = 0
                        while i.interests.count >= z + 1 && p == 0 { // loop until you've gone though all the interest
                            var y = 0
                            while x.interests.count >= y + 1 { // loop until you go through all the interests
                                if i.interests[z].name != x.interests[y].name && i.name != x.name { // compare the intersts
                                    inPairs.append("\(i.name) and \(x.name) are a pair, because \(i.name) is interested in \(i.interests[z].name) and \(x.name) is interested in \(x.interests[y].name)")
                                    peeps2.remove(at: y)
                                    peeps.remove(at: y)
                                    p = 1
                                    n = 1
                                    j += 1
                                    y = x.interests.count - 1 // exit small loop once fount a match
                                    z = i.interests.count - 1 // exit big loop once fount a match
                                }
                                y += 1
                            }
                            z += 1
                       }
                    }
                }
            }
        }
        return inPairs
   }
    //functions
// generate all the interests in a random order
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

let katie = Katie()
var allPairs = katie.pairs
katie.introduction()
print("\n")
katie.tellInterests()
print("\n")
print("THERE ARE A TOTAL OF \(allPairs.count) POTENTIAL PAIRS!")
for i in allPairs {
    print(i)
}
