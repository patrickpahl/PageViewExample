import UIKit

class fourthViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let fourthQuote = QuoteController.getFavoriteQuotes()[3]
        quoteLabel.text = fourthQuote
    }

}
