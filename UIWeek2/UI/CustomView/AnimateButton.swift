import Foundation
import UIKit

class AnimateButton: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addTarget(self, action: #selector(animateButton(_:)), for: .touchUpInside)
    }
    
    @objc func animateButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        } completion: { (completed) in
            UIView.animate(withDuration: 0.2) {
                self.transform = .identity
            }
        }
    }
}
