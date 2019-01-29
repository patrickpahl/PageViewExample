import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let allQuotes = QuoteController.getFavoriteQuotes()
        if allQuotes.count < 2 {
            quoteLabel.text = "Favorite quotes to collect them here"
            return
        }

        let secondQuote = QuoteController.getFavoriteQuotes()[1]
        quoteLabel.text = secondQuote
    }
}
