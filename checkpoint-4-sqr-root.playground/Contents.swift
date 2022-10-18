//
// Square Root Machine
// Jenny Mikac, 2022, for Paul Hudson's 100 Days of SwiftUI
//
// THE CHALLENGE:
// Write a function that accepts an integer between 1-10,000 and returns
// its square root (if it exsists)
// 1. Cannot use built-in sqrt() function
// 2. Throw an out-of-bounds error if number is outside of range (less than 1 or greater than 10,000)
// 3. Only integer square roots, no decimals
// 4. If no square root exists, throw a "no root" error

// create a squareRootError type based off of Swift's built-in error
enum squareRootError: Error {
    case outOfBounds, noRoot
}

// check if number has a square root
func squareRoot(_ number: Int) throws -> Int {
    
    if number < 1 || number > 10000 {
        throw squareRootError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    
    throw squareRootError.noRoot
    
}

do {
    let result = try squareRoot(30)
    print(result)
} catch {
    print("There was an error")
}
