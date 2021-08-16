import Foundation
import UIKit

class AdaptPageControl: UIPageControl {
    
    @IBInspectable var selectedPageImage: UIImage?
    
    @IBInspectable var otherPagesImage: UIImage?
    
    func invalidatePosition(index: Int) {
        updateDots(index)
        currentPage = index
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        if #available(iOS 14.0, *) {
            defaultConfigurationForiOS14AndAbove(0)
        }
    }
    
    private func defaultConfigurationForiOS14AndAbove(_ newIndex: Int) {
        if #available(iOS 14.0, *) {
            for index in 0..<numberOfPages {
                let image = (index == newIndex ? selectedPageImage : otherPagesImage)
                setIndicatorImage(image, forPage: index)
            }
        }
    }
    
    private func updateDots(_ nextIndex: Int) {
        if #available(iOS 14.0, *) {
            defaultConfigurationForiOS14AndAbove(nextIndex)
        }
    }

}
