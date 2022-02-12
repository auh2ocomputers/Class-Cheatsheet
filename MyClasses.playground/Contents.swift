import UIKit
//the class keyword is how you declare a new class
//be sure to start your class name with a capital letter
class Person {
    //declare all your variables here
    var firstName:String
    var lastName:String
    var homeState:String
    var age:Int
    //this is an example of a variable with a default value
    var favoriteVacationSpot:String = "New York City"
    //this is called a computed property.  its a variable made from other variables in the class
    var fullName: String {
        return firstName + " " + lastName
    }
    //this is the initializer.  all classes need an initializer
    //the initializer sets the starting value for all of your class variables
    init(firstName:String, lastName:String, homeState:String, age:Int)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.homeState = homeState
        self.age = age
    }
    //this is a function within the class
    func printFullName () {
        print(fullName)
    }
}
//notice the encapsulation of the variables and classes below.  you have to call the instance name then function or variable using dot notation.
//create a new instance of the class
var bill = Person(firstName: "Bill", lastName: "Thompson", homeState: "Texas", age: 40)
//use dot notation (instance name.variable name to set a variable's value
bill.favoriteVacationSpot = "Las Vegas"
print(bill.favoriteVacationSpot)
//we are calling our function using dot notation here
bill.printFullName()

//creating another instance
var bob = Person(firstName: "Bob", lastName: "Loblaw", homeState: "California", age: 38)
bob.printFullName()
//reference vs value types.  this illustrates that setting one variable equal to a class instance doesn't copy it but rather points to the place in memory where the original instance is held.
// in the example below we create stan as equal to bob, then change stan's last name and print bob's name.  It changed bob because stan is a reference that points to bob in memory
var stan = bob
stan.printFullName()
stan.lastName="Christmas"
bob.printFullName()
//Keep coding!  You're learning a lot about Swift!
