/*
 Day 9 of 100 Days of SwiftUI
 Closures
*/

func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser // no () when assigning function to variable, () = calling it
greetCopy()

// CLOSURES

let sayHello = {
    print("Hi there")
}

sayHello()

// What if we want our closure to accept parameters?

let sayHelloAgain = { (name: String) -> String in "Hi \(name)!" }
sayHelloAgain("Ada") // you don't use the parameter name, just the data

// [in] keyword - marks end of parameters and return type and
// beginning of body of code within a closure

// Data types in closures. Function's type = type of its data

/* If your closure takes no data and returns no data */

var anotherGreetCopy: () -> Void = greetUser

/* What if a function takes one data type but spits out another? */

func getUserData(for id: Int) -> String {
    if id == 1986 {
        return "Jenny Mikac"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData // data type: accepts int, returns string
let user = data(1986)
print(user)

let team = ["Ada Lovelace", "Marie Curie", "Grace Hopper", "Mary Jackson"]
let sortedTeam = team.sorted() // <- we can control sort by using a function as a parameter if it returns a bool
print(sortedTeam)

// What if you want the team captian to come first and then sort the rest alphabetically?
// IE: why closures matter?
//func captainFirstSorted(name1: String, name2: String) -> Bool {
//    if name1 == "Marie Curie" {
//        return true
//    } else if name2 == "Marie Curie" {
//        return false
//    }
//
//    return name1 < name2
//}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)

//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Marie Curie" {
//        return true
//    } else if name2 == "Marie Curie" {
//        return false
//    }
//
//    return name1 < name2
//})

// Benefits of closure: you don't have to write a full function for every single little
// thing you're going to do it, especially if it's only going to be used once.

// TRAILING CLOSURES AND SHORTHAND SYNTAX

// One of the first ways we can clean up our syntax in this example is by removing the data types
// because sorted() can ONLY accept two strings and must return a Bool. Swift doesn't need us to
// repeat all that. Remember that [in] marks ends of parameters and beginning of code block

let captainFirstTeam = team.sorted { a, b in /* compare to line 68 */
    if a == "Marie Curie" {
        return true
    } else if b == "Marie Curie" {
        return false
    }
    
    return a < b
} /* notice that the opening and closing parentheses can also be removed */

// Another way we can shorten up our code is using SHORTHAND SYNTAX; these are specially
// named values that Swift provides to us by default when creating parameters. In this case
// we're using $0 instead of a/name1 and $1 instead of b/name2
let newTeamCaptain = team.sorted { /* a, b in */
    if $0 == "Grace Hopper" {
        return true
    } else if $1 == "Grace Hopper" {
        return false
    }
    
    return $0 < $1
}

// Should we ALWAYS use this syntax? Probably not. I personally don't like the way this reads.
// Hudson states that he always uses shorthand syntax UNLESS:
// 1. The closure's code is long
// 2. $0 and friends used more than once
// 3. You have 3+ parameters

// More examples of closure usefulness
let mOnly = team.filter { $0.hasPrefix("M") }
print(mOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// ACCEPTING FUNCTIONS AS PARAMETERS



func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    
    var numbers = [Int]()
    
    for _ in 0..<size { /* Won't be calling variale so you can just use blank _, I think? */
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20) /* reminder: you can leave out RETURN if its only one line of code */
}

print(rolls)

// Accepting multiple functions as parameters within a function
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
