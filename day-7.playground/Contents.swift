import Cocoa

func checkLetters(word1: String, word2: String) -> String {
    if word1.sorted() == word2.sorted() {
        return("True")
    } else {
        return("False")
    }
}

checkLetters(word1: "dad", word2: "add")

// The solution presented in the video. I forgot that you can simply compare
// two items and Swift will return a Boolean. Much simpler than my solution.
func checkLettersAgain(word1: String, word2: String) -> Bool {
    word1.sorted() == word2.sorted()
    //if you only have one line of code, you can remove the RETURN keyword
}
