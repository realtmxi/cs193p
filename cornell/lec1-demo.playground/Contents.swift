import UIKit

// Constant
let const = "vin"

// Variable
var variable = "Richie"


var instructor: String
instructor = "Vin"

let num: Double = 2.0
let numFloat: Float = 3.0

var isValid: Bool = true
isValid = false

//var a = 0
//a = a + 1
//a = a - 1
//a = a * 2
//a = a / 2
//a = a % 2

2 != 3
true || false

var string = "Hello World"
"Hello" + "Cruel" + "World"
var c = "Cruel"
"Hello \(c) World \("!")"

var staff: [Any] = ["Vin", "Richie", "Jayson", "Caitlyn"]
staff[0] = "3"

staff

staff.append("Vin")

var staffAge: [String: Int] = [
    "Vin": 20
]

staffAge["Vin"]

var a = 0

if a == 0 {
    print("Hello")
} else {
    print("world")
}

//guard a == 6 else {
//    print("ERROR")
//    throw NSError()
//}

for i in 1..<10 {
    print(i)
}

var arr = [1, 2, 3]
for i in arr {
    print(i)
}

//func myName(name str: String) {
//    print("My name is \(str)")
//}

//myName(name: "Murphy")

func myName(_ str: String) -> String {
    print("My name is \(str)")
    return str
}

myName("Murphy")

func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

add(num1: 1, num2: 3)

func getFavoriteSport(name: String) ->String? {
    if name == "Vin" {
        return  "Tennis"
    }
    return nil
}

var d: String
//if let vinFav = getFavoriteSport(name: "Vin") {
//    d = vinFav
//}
//d = getFavoriteSport(name: "Murphy")
//
//d = getFavoriteSport(name: "Vin")
d = getFavoriteSport(name: "Richie")!
