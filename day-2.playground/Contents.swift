// HOW TO STORE TRUTH WITH BOOLEANS

/* Another data type, can only have a value of "true" or "false" */

let goodDogs = true
let gameOver = false

/* No arithmetic can be used with Booleans, but it does have its own
operator, !, that means "not", flipping the value of whatever is currently
 stored in the variable
 */

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

/* There's some other functionality, like toggle() It will flip
true value to false, and false value to true */

var isGameOver = false
print(isGameOver)

isGameOver.toggle()
print(isGameOver)

// HOW TO JOIN STRINGS TOGETHER

/* You can join strings together with other strings and other data
 types. There's two different ways to accomplish this: using + or
 string interpolation
 */

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart
print(greeting)

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

/* Best to avoid using + in long strings because Swift has to create a
 new string everytime a + is used. A better method for joining strings
 is string interpolation */

let name = "Jenny"
let age = 36
let message = "Hello, my name is \(name) and I am \(age) years old"
print(message)

/* String interpolation is much more efficient and easier to use,
especially since mixing quotes and double quotes can break your code. It
 also allows you to string different data types together, whereas using
 the + limits you to only joining data of the same type
 (string + stirng, int + int, etc.)
 */
