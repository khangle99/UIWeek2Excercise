import Foundation
import UIKit

class AnimateButton: UIButton {
    
    let scaleFactor: CGFloat = 0.9
    let animDuration = 0.1
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        addTarget(self, action: #selector(animateButton(_:)), for: .touchUpInside)
    }
    
    @objc func animateButton(_ sender: UIButton) {
        isUserInteractionEnabled = false
        UIView.animate(withDuration: animDuration) { [unowned self] in
            self.transform = CGAffineTransform(scaleX: self.scaleFactor, y: self.scaleFactor)
        } completion: { [unowned self] (completed) in
            UIView.animate(withDuration: self.animDuration) {
                self.transform = .identity
            } completion: { (completed) in
                self.isUserInteractionEnabled = true
            }
        }
        
    }
    
}
