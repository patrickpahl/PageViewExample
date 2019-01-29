import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let thirdQuote = QuoteController.getFavoriteQuotes()[2]
        quoteLabel.text = thirdQuote
    }

}
