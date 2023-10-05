//
//  SceneDelegate.swift
//  HW34_RadioApp
//
//  Created by Dawei Hao on 2023/9/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        self.window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        self.window?.windowScene = windowScene
        self.window?.rootViewController = createTabbar()
        window?.tintColor = .systemPink
        self.window?.makeKeyAndVisible()
    }

    func createRadioStationNC() -> UINavigationController {
        let radioStationVC = RadioAppViewController()
        let radioStationTitle: String = "Radio Station"
        // Set the title of the view controller directly.
        radioStationVC.title = radioStationTitle
        // Create the navigation controller with the root view controller.
        let radioStationNC = UINavigationController(rootViewController: radioStationVC)
        // Set prefersLargeTitles on the navigation controller’s navigation bar.
        radioStationNC.navigationBar.prefersLargeTitles = true
        radioStationVC.tabBarItem = UITabBarItem(title: radioStationTitle, image: UIImage(systemName: "radio.fill"), tag: 0)
        return radioStationNC
    }


    func createFavoriteListNC () -> UINavigationController {
        let favoriteListVC = FavoriteListViewController()
        let favoriteListTitle: String = "Favorite List"
        favoriteListVC.title = favoriteListTitle
        let favoriteListNC = UINavigationController(rootViewController: favoriteListVC)
        favoriteListNC.navigationBar.prefersLargeTitles = true
        favoriteListVC.tabBarItem = UITabBarItem(title: favoriteListTitle, image: UIImage(systemName: "heart.fill"), tag: 1)
        return favoriteListNC
    }

    func createTabbar () -> UITabBarController {
        let tabBar = UITabBarController()
        tabBar.tabBar.tintColor = UIColor.systemPink
        tabBar.viewControllers = [createRadioStationNC (), createFavoriteListNC () ]
        return tabBar
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

