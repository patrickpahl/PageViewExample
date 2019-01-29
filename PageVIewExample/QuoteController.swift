import Foundation

class QuoteController {

    static func getFavoriteQuotes() -> [String] {
        return favoriteQuotes
    }

    //static var savedQuotes: [String] = []
    static var favoriteQuotes = ["Hello, this is some long example text to see how all this will wrap when I throw a bunch of words into this label.",
        "How are you, more text for you to read. I hope you like these random words",
        "I like coffee, decaf coffee is great. I also think Chai tea latte, hot or cold, is pretty dope.",]
        //"Shrimp is the best food that you will ever eat in my humble opinion." ]
}
