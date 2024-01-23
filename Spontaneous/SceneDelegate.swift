//
//  SceneDelegate.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import UIKit


class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let view = OnboardingView(holder: NavigationStackHolder())

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UINavigationController(rootViewController: view.viewController)
        window?.makeKeyAndVisible()
    }
}


