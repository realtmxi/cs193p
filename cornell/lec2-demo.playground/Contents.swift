import UIKit

// TODO
class Student {
    // Properties
    var name: String
    var major: String
    var age: Int
    
    init(name: String, major: String, age: Int) {
        self.name = name
        self.major = major
        self.age = age
    }
    
}

let vin = Student(name: "Vin", major: "Info Sci", age: 20)
vin.major

class CSStudent: Student
{
    var doesShower: Bool
    
    init(name: String, major: String, age: Int, doesShower: Bool)
    {
        self.doesShower = doesShower
        super.init(name: name, major: major, age: age)
        
    }
}

let archit = CSStudent(name: "Blair", major: "CS", age: 20, doesShower: false)
archit.name

