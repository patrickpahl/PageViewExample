import UIKit

class firstViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let allQuotes = QuoteController.getFavoriteQuotes()
        if allQuotes.isEmpty {
            quoteLabel.text = "Favorite quotes to collect them here"
            return
        }

        if let firstQuote = QuoteController.getFavoriteQuotes().first {
            quoteLabel.text = firstQuote
        }
    }
    
}
