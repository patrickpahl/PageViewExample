import UIKit

class fourthViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let fourthQuote = QuoteController.getFavoriteQuotes()[2]
        quoteLabel.text = fourthQuote
    }

}
