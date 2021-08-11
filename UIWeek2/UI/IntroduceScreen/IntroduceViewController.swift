import UIKit

class IntroduceViewController: UIViewController {

    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var goToLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        let attributeText = NSMutableAttributedString(string: "Already Have An Acount? Log In")
        attributeText.setColor(color: UIColor(named: ColorName.primaryColor)!, forText: "Log In")
        goToLoginButton.setAttributedTitle(attributeText, for: .normal)
        
        getStartedButton.layer.cornerRadius = 18
    }

}
