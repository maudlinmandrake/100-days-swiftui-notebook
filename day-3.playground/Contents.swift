import Cocoa

// HOW TO STORE ORDERED DATA IN ARRAYS

/* It's common to need to store more than one value in one place, and this can be accomplished with
a complex data type called an array. They can hold multiple strings, as many as you'd like! They can also
 adapt to size, so you can take or add on new strings whenever needed
 */

var weekDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"] // creates an array of strings for days of week
var birthMonths = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12] // arrays can also hold integers (or doubles)

/* If you need to fetch a specific piece of data, you refer to that string's position in the array using it's index
 number. Note that in programming you start counting from 0, not 1. In the above weekDays variable, "Sunday" is in
 position 0. NOTE: make sure an item exists at the index you're asking for, or your code will crash*/

print(weekDays[0])
print(weekDays[6])

/* You can use the append() function to add new items to your array. Note that an array can only hold one data type.
You cannot mix strings, ints and doubles. This is type safety */

var mikacFamily = ["Rik", "Jenny", "Ada"]
print(mikacFamily)
mikacFamily.append("Mochi")
mikacFamily.append("Rufflecake")
print(mikacFamily)

/* If you want to create an empty array and populate it later, you have to declare the data type that will
be stored within the array using a specific syntax */

var favoriteAlbums = Array<String>() // full syntax for creating an empty array; can only hold strings
favoriteAlbums.append("May Our Chambers Be Full")
favoriteAlbums.append("London Calling")
favoriteAlbums.append("Get Behind Me Satan")

var ages = Array<Int>()
ages.append(1)
ages.append(6)
ages.append(36)
ages.append(41)

/* Arrays, like other data types, have built-in functionality to help you work with them */

/* .count - to read how many items are in an array */
print(favoriteAlbums.count)

/* remove(at:) to remove an item at a specificed index */
mikacFamily.remove(at: 4)
print(mikacFamily)

/* removeAll() to remove everything and start over */
favoriteAlbums.removeAll()

/* contains() to check if a particular item exists - returns T/F */
var favoriteMovies = ["Labyrinth", "The Dark Crystal", "Legend", "The Neverending Story", "Ladyhawke"]
print(favoriteMovies.contains("Sixteen Candles"))
print(favoriteMovies.contains("Legend"))

/* sorted() will return new array with items in ascending disorder, alphabetically or numerical depending on
 the contents of the array */

print(favoriteMovies.sorted())

/* reversed() works same as sorted(), only in decescinding order*/

print(favoriteMovies.reversed())






