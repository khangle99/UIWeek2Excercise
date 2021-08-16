import UIKit

class IntroduceViewController: UIViewController {

    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var goToLoginButton: UIButton!
    @IBOutlet weak var tutorialCollectionView: UICollectionView!
    @IBOutlet weak var tutorialPageControl: AdaptPageControl!
    
    let tutorials = TutorialInfo.getTutorialInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        let attributeText = NSMutableAttributedString(string: "Already Have An Acount? Log In")
        attributeText.setColor(color: UIColor(named: ColorName.primaryColor)!, forText: "Log In")
        goToLoginButton.setAttributedTitle(attributeText, for: .normal)
        
        getStartedButton.layer.cornerRadius = 18
        
        setupTutorialCollection()
        setupPageControl()
    }
    
    private func setupTutorialCollection() {
        let tutorialCellNib = UINib(nibName: "TutorialCollectionViewCell", bundle: .main)
        tutorialCollectionView.register(tutorialCellNib, forCellWithReuseIdentifier: "tutorialCell")
        tutorialCollectionView.delegate = self
        tutorialCollectionView.dataSource = self
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
      //  flowLayout.itemSize = tutorialCollectionView.frame.size
        flowLayout.minimumLineSpacing = 0
        flowLayout.minimumInteritemSpacing = 0
        tutorialCollectionView.collectionViewLayout = flowLayout
    }
    
    private func setupPageControl() {
        tutorialPageControl.numberOfPages = tutorials.count
    }
}

extension IntroduceViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tutorials.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tutorialCell", for: indexPath) as! TutorialCollectionViewCell
        cell.configureWith(tutorials[indexPath.item])
        return cell
    }
}

extension IntroduceViewController: UICollectionViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let visibleRect = CGRect(origin: self.tutorialCollectionView.contentOffset, size: self.tutorialCollectionView.bounds.size)
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        if let visibleIndexPath = self.tutorialCollectionView.indexPathForItem(at: visiblePoint) {
            self.tutorialPageControl.invalidatePosition(index: visibleIndexPath.row)
        }
    }
}

extension IntroduceViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
}
