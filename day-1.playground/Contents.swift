import Cocoa

// HOW TO CREATE VARIABLES AND CONSTANTS

var greeting = "Hello, Playground!"
print(greeting)

// var = the data can vary; i.e. be changed later in the code

greeting = "Hello, World!" // once variable declared, you no longer need to keep writing "var"
print(greeting)

greeting = "Hi Jenny"
print(greeting)

// if you're not changing data, it's best to use a constant
let name = "Jenny"

/* When declaring variables using let, you can't re-assign data
 to it. If you attempt, say, name = "Ada", you'll get an error
 that tells you to make "name" mutable by changing it to a var */

// HOW TO CREATE STRINGS

/* When assigning text to a variable, it's called a string
like a string of letters. */

let quote = "Don't let the bastards grind you down"
print(quote)

/* Strings can be as long as you want, but using line breaks will
create an error. Strings with line breaks need to be written
a little differently, using triple quotes */

let quoteLineBreaks = """
    Don't let
    the bastards
    grind you down
    """
print(quoteLineBreaks)

/* Swift has built-in code that we can use to do different things to
 strings, like counting all the character or changing all the letters
 to uppercase, among other things
 */

print(quote.count) // prints how many characters in var quote

print(quote.uppercased())

/* There are also built-in functions to check if a string
 starts or ends with characters you designate. It will return
 true if the characters are found, false if not */

print(quote.hasPrefix("Don't"))
print(quote.hasPrefix("Illegitimi"))

print(quote.hasSuffix(".txt"))
print(quote.hasSuffix("down"))

// HOW TO STORE WHOLE NUMBERS
/* In programming, whole numbers are referred to as integers,
 or int, for short. You make a new integer just like a string.
 Note that int does not need quotations, as strings and ints are
 two different types of data */

let age = 36
let million = 3000000 // you don't use commas to separate in large #s
let thousand = 3_000 // you can use underscores, though, or just not separate at all
print(thousand)
let anotherThousand = 30_00 // Swift doesn't actually care about the underscores
print(anotherThousand)

/* You can do arithmetic within the variable */

let score = 10
let lowerScore = score - 2
print(lowerScore)
let higherScore = score + 2
print(higherScore)
let doubledScore = score * 2
print(doubledScore)
let squaredScore = score * score
print(squaredScore)
let halvedScore = score / 2
print(halvedScore)

/* There's some shorthand you can use when re-assigning a value to a variable after
 doing something to it. They're called compound assignment operators */

var counter = 10

counter = counter + 5
counter += 5 // this will do the same thing as the line above

counter = counter * 2
counter *= 2 // this will do the same thing as the line above

counter = counter - 10
counter -= 10 // this will do the same thing as the line above

/* Integers have some of their own built-in functionality, just like strings */

let newNumber = 120
print(newNumber.isMultiple(of: 3)) // check if 120 is a multiple of 3, return T/F
print(120.isMultiple(of: 3)) // this does the same thing

// HOW TO STORE DECIMAL NUMBERS

/* In programming, decimal numbers are typicallty referred to as floating point numbers. Swift
 calls them doubles, short for "double-precision floating-point number." Note that since ints
 and doubles are considered different data types even though they both contain numbers, you
 can't add them together. */

let temp = 98.7
let newAge = 36.0 // technically a whole number, but Swift will insist on treating it like a double
let year = 1

let birthday = Int(newAge) + year // you can tell Swift to treat your Double like an Int
let newBirthday = newAge + Double(year) // ...or vice versa

/* Note that once Swift has decided what type of data you assigned to a variable/constant,
you can't assign data with a different type to it. A variable declared with a string
can only ever be a string */
