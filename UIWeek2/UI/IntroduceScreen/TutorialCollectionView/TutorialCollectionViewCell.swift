import UIKit

class TutorialCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var tutorialImageView: UIImageView!
    @IBOutlet weak var tutorialTitleLabel: UILabel!
    @IBOutlet weak var tutorialDescriptionLabel: UILabel!
    
    func configureWith(_ tutorial: TutorialInfo) {
        tutorialTitleLabel.text = tutorial.title
        tutorialDescriptionLabel.text = tutorial.description
        tutorialImageView.image = UIImage(named: tutorial.imageName)
    }

}
