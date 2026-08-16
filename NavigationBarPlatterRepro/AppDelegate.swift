import UIKit

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        true
    }
}

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = scene as? UIWindowScene else { return }

        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = ReproductionTabBarController()
        window.makeKeyAndVisible()
        self.window = window
    }
}

private final class ReproductionTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let navigationController = ReproductionNavigationController(
            rootViewController: RootViewController()
        )
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house.fill"),
            selectedImage: nil
        )
        viewControllers = [navigationController]
    }
}

private final class ReproductionNavigationController: UINavigationController {
    override var childForStatusBarStyle: UIViewController? {
        visibleViewController
    }
}
