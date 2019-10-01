import Foundation

// interests class
public class Interests {
    // static properties
    public static var allInterests = Interests.generateAllInt()
    //propertis
    public var name: String
    public var description2: String
    //initializers
    public init(name: String, description2: String) {
        self.name = name
        self.description2 = description2
    }
    //static functions
    static func generateAllInt() -> [Interests] {
        var intPool = [Interests]()
        let football = Interests(name: "Football", description2: "Football is played between 22 people and you need 2 goals and a sphere ball.")
        let videoGames = Interests(name: "Video Games", description2: "Video games can be played in a variety of different ways. Firstly you have the different consoles such as PS4, xBox, Nintendo and PC, and seconldy you must choose between the hunderds of thousands of available games out there.")
        let swimming = Interests(name: "Swimming", description2: "Swimming is amazing because you can either do it competitively, for fun or for pure health purposes. You can swim in a lane using different techniques or you can just flop around with your friends and family.")
        let basketball = Interests(name: "Basketball", description2: "Basketball is played in a 5-a-side court with a spehere ball and hoops.")
        let racing = Interests(name: "Racing", description2: "Racing can be very dangerous, that is why its best done in a dedicated track and is usually similar type of cars are being used such as F1 cars, motorcycles etc.")
        let computers = Interests(name: "Computers", description2: "Computers are amazing you can literally do anything with them hence why someone can be so interested in them, the only limmit is your imagination.")
        let painting = Interests(name: "painting", description2: "Painting is so diverse you can paint on different canvasses, usiung different brushes and painting techniques.")
        let wineTasting = Interests(name: "Wine tasting", description2: "Wine tasting is usually an adult favourite, wine itself is the oldest alcohol known to man hence why its culture is so important to some.")
        let reading = Interests(name: "Reading", description2: "Reading is a great way to escape reality, it relaxes you, improves your grammar, your overall knowledge of your language or perhaps a different language and mostly it allows you to fantasize.")
        let writing = Interests(name: "Writing", description2: "Writing is a great way to express yourself, your feelings and your thoughts whether its in your journal or perhaps in an online blog. Ultimately it's your choice.")
        let music = Interests(name: "Music", description2: "Music just like reading and writing is a great way to express your emotions, whether you are just listening to it or creating it.")
        let running = Interests(name: "Running", description2: "Running is great because you can do it for relaxation or just pure health reasons.")
        let fishing = Interests(name: "Fishing", description2: "Fishing is an activity you can do alone to relax from the somewhat stressful worl we line in and it can also be done in groups as a bonding mechanism.")
        let volunteer = Interests(name: "Volunteering", description2: "You can volunteer in many different ways such as cooking or teaching or even building something and all for free, with that being said it feels your heart knowing you have done something for someone.")
        let dancing = Interests(name: "Dancing", description2: "Dancing is awesome for agility and its mostly fun.")
        let skiing = Interests(name: "Skiing", description2: "Skiing is an amazing winter sport.")
        let golf = Interests(name: "Golf", description2: "Golf is played with a small hard spherical balls and clubs of different sizes.")
        let boardGames = Interests(name: "Boardgames", description2: "There are so many board games to choose from and all have different purposes and ways to play, some classics include Monopoly, Cluedo and more.")
        let cooking = Interests(name: "cooking", description2: "Cooking is so diverse you can devided into so many categories and there are so many ways and things you can do. It is definetely an interest that never grows old.")
        let bowling = Interests(name: "bowling", description2: "Bowling is player with a weighted ball which slides onto polished wood and the aim is to knock over all of the 10 pins.")
        let handCrafting = Interests(name: "Hand-crafting", description2: "With handcrafting you can literally use anything to create small jewelery.")
        let magic = Interests(name: "Magic", description2: "Magic tricks are mainly slight of hand but you need to be a showman to get people really excited.")
        let boxing = Interests(name: "Boxing", description2: "Boxing 2 people fighting with eachother with gloves to see you is the superior fighter this fight usually lasts 12 rounds, 3 minutes each round.")
        let mma = Interests(name: "Mixed Martial Arts", description2: "MMA is the ultimate fighting sport because it includes all the fighting styles and is played between 2 people with fingerless gloves and last 3 rounds 3 to 5 minutes each round.")
        intPool.append(swimming);
        intPool.append(football);
        intPool.append(videoGames);
        intPool.append(videoGames);
        intPool.append(racing)
        intPool.append(computers);
        intPool.append(painting);
        intPool.append(wineTasting);
        intPool.append(reading);
        intPool.append(writing)
        intPool.append(running);
        intPool.append(fishing);
        intPool.append(volunteer);
        intPool.append(music);
        intPool.append(dancing)
        intPool.append(skiing);
        intPool.append(golf);
        intPool.append(boardGames);
        intPool.append(cooking);
        intPool.append(bowling)
        intPool.append(handCrafting);
        intPool.append(magic);
        intPool.append(boxing);
        intPool.append(mma);
        intPool.append(basketball)
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
