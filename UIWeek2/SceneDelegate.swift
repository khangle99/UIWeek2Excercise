import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        let launchScreenVC = LaunchScreenViewController(nibName: "LaunchScreenViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: launchScreenVC)
        navigationController.isNavigationBarHidden = true
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }
}

