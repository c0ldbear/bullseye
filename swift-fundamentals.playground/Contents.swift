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
