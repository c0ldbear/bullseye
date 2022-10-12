import UIKit

var greeting = "Hello, playground"
print(greeting)

var isLongerThan5Letters = greeting.count > 5
if isLongerThan5Letters {
    print("YES!")
} else {
    print("Word is short.")
}

// OPTIONALS
var petName: String?
petName = "Mango"
print(petName)
print(petName!)
var aName = petName as! String
print(aName)
var maybeName = petName as? String
print(maybeName)

// Optional binding
let queName: String? = "LoL"
print(queName)
if let queName = queName { // Shadowing
    print(queName)
}

// nil coalescing operator: ??
var optionalInt: Int? = 10
var requiredResult = optionalInt ?? 0
print(requiredResult)

// Collections (part 1)
// Tuples, Array

let t1: (String, Int) = ("Teddy", 33)
let t2 = ("Someone", Int?(nil))
print(t2)
let studentData = (name: "Mark", age: 39, petName: "Mango")
print(studentData.name)
print(studentData.petName)
print(studentData.age)
let (mark, age, pet) = studentData
mark
age
pet
let (lol, _, pet2) = studentData
lol
pet2

// Array
var a1 = ["Cookie", "lol"]
a1 += ["Hello"]
a1.append("World")
a1
a1[2]
a1.first
a1.last

var pastries: [String] = ["cookie", "danish", "vetebulle", "kanelbulle", "donut", "brownie", "semla"]
pastries.count
let firstThree = Array(pastries[1...3])
let actualFirstThree = pastries[0..<3]
pastries.append("eclair")
pastries.count
if let first = pastries.first {
    print(first)
}
pastries.contains("donut")
pastries.contains("bulle")
let a2 = [String]()
if let first = a2.first {
    print(first)
} else {
    print("no element here")
}
pastries.insert("bulle", at: 2)
let removeTwo = pastries.remove(at: 2)
pastries
pastries[0...1] = ["0", "1", "2"] // inserts the third and replaces the first two
pastries.swapAt(5,1)
pastries.swapAt(0, pastries.count-1)

// For loops
let count = 100
for i in 1...count where i % 10 == 0 {
    print(i)
}

for _ in count-10...count where count < 100 {
    print(count)
}

// Iterating Collection
for bulle in pastries where bulle.contains("b") {
    print(bulle)
}

// Nested loops & early exits

print("Nested loops and stuff!")
firstLoop: for i in 1...10 where i > 6 {
secondLoop: for j in 1...10 {
    if (i == j) {
        continue firstLoop
    }
    print(i * j)
}
}

for day in ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"] {
    if day == "friday" {
        print("I'm in love!")
        break
    } else {
        print(day)
    }
}

print("---")
floorLoop: for floor in 10...15 {
roomLoop: for room in 1...6 {
    if floor == 13 {
        continue floorLoop
    }
    if room % 2 == 1 {
        continue roomLoop
    }
    if room == 4 && floor == 15 {
        break roomLoop
    }
    print("\(floor)-\(room)")
}
}

// MORE Collections
// Dictionary & Set

var d1: [String: String] = ["cat": "🐱", "frog": "🐸", "cow": "🐮" ]
d1["amphibian"] = d1["frog"]
d1
d1.values
d1.updateValue("🐶", forKey: "dog")

var d2 = [String: Int]()
d2["leet"] = 1337
d2["elite"] = 1337
d2["lool"] = 1001
var exists = d2["loool"] ?? 0
d2
d2.values

for (_, value) in d2 {
    print(value)
}

d2["lool"] = nil // removes
d2.removeValue(forKey: "elite")
d2.values

// Set
var someSet1 = Set<String>()
var someSet2: Set<String>
var someSet = Set([1, 2, 3, 3, 10])
someSet.insert(1337)
someSet.insert(7)
someSet.remove(7)
var anotherSet = Set([6, 5, 4, 9, 3, 1337])
let intersection = someSet.intersection(anotherSet)
let difference = someSet.symmetricDifference(anotherSet)
let union = someSet.union(anotherSet)
print(union.sorted())

// Functions & Named Types
// Named types: Structures, Classes (Enumerations & Protocols)
//      even Ints, Strings, Booleans, Arrays
// Compound Types do not have names
//  instead they are defined by the other types they contain
//  e.g. Tuples & Functions
// Types are: Value or Reference types (classes & functions)

// Functions
func printHello() {
    print("Hello")
}

printHello()

func doSomething(_ fcn: () -> ()) {
    fcn()
}
doSomething(printHello)

doSomething {
    print("Hello there")
}

// Type annotations / alias
typealias Student = (name: String, grade: Int, pet: String?)

let sam: Student = (name: "Sam", grade: 59, pet: nil)
print(sam)
let dude: Student = (name: "Dude", grade: 19, pet: "Duddey")

func orderPetScarf(for student: Student) {
    guard let pet = student.pet else {
        return
    }
    print("Ordered a custom scarf for \(student.name)'s pet, \(pet)")
}

orderPetScarf(for: sam)
orderPetScarf(for: dude)

func printName(for student: (name: String, grade: Int, pet: String?)) {
    print(student.name)
}
printName(for: sam)

// Structs & Classes

struct Actor {
    let name: String
    var filmography: [String] = []
    
    mutating func signOnForSequal(franchiseName: String) {
        filmography.append("Upcoming \(franchiseName)")
    }
}

var gotgStar = Actor(name: "Zoe Saldana", filmography: ["Guardians of the Galaxy"])
gotgStar.filmography.append("Avatar")
var starTrekStar = gotgStar
starTrekStar.filmography.append("Star Trek")
var avatarStar = starTrekStar
for franchiseName in avatarStar.filmography {
    avatarStar.signOnForSequal(franchiseName: franchiseName)
}
print(gotgStar)
print(starTrekStar)
print(avatarStar)

// changing the structure Actor to a class makes all the variable passing as a reference instead of values (meaning the changes affect the same object)

// CLOSURES
var add = { (a: Int, b: Int) in
    a + b
}
print(add(4,2))

var multiply = { (a: Int, b: Int) in
    a * b
} // Cannot have default values, or parameter names in closures
print(multiply(10,2))

func printResult(_ operate: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print(operate(a, b))
}

printResult({ (a: Int, b: Int) -> Int in
    a * b + 100
}, 7, 7)

//

struct Wizard {
    // keyword static makes the constant a type specific property
    static let commonMagicalItems = [
        "Magical Wand",
        "Polyjuice Potion",
        "The Force"
    ]
    var firstName: String {
        willSet {
            print(firstName + " will be set to " + newValue)
        }
        didSet {
            if firstName.contains(" ") {
                print("No spaces allowed! Will revert to \(oldValue).")
                firstName = oldValue
            }
        }
    }
    var lastName: String
    
    var fullName: String {
        get { firstName + " " + lastName }
        set {
            let nameSubstrings = newValue.split(separator: " ")
            guard nameSubstrings.count >= 2 else {
                print("\(newValue) is not a full name.")
                return
            }
            let nameStrings = nameSubstrings.map(String.init)
            firstName = nameStrings.first!
            lastName = nameStrings.last!
        }
    }
    
    // Will not be initialized until it is used
    lazy var magicalCreature = "'ROAR!!! Magical, I am!' - 🐉"
}

var wizard = Wizard(firstName: "Gandalf", lastName: "Greyjoy")
wizard.firstName = "Hermione"
wizard.lastName = "Kenobi"

wizard.firstName = "Za bi"
Wizard.commonMagicalItems
wizard.fullName
wizard.fullName = "Donovan Shrek"
wizard.fullName
wizard.firstName
