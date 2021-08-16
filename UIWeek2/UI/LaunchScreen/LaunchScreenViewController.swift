import UIKit

class LaunchScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            guard let self = self else { return }
            let introduceVC = IntroduceViewController(nibName: "IntroduceViewController", bundle: nil)
            self.navigationController?.pushViewController(introduceVC, animated: true)
        }
    }
    
}
