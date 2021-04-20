import UIKit

// Struct

let number: Int = 10
let name: String = "Kaique"

struct Person {
    var name: String?
    var age: Int = 0
    
    init(name: String) {
        self.name = name
    }
    func sayHello() {
        print("Meu nome ")
    }
    
    mutating func incrementing() {
        age += 1
    }
}

var person = Person(name: "Lucas")

var newPerson = Person(name: "kaique")
person.sayHello()
person.name = "JOao"

struct Temperature {
    var celsius : Double
    var farenheint: Double {
        return celsius * 1.8 + 32
    }
}

var temperature = Temperature(celsius: 26.5)
print(temperature.celsius)
print(temperature.farenheint)
