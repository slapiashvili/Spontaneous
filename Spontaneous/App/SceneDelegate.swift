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

        registerCustomFont()

        window?.makeKeyAndVisible()
    }

    private func registerCustomFont() {
        if let fontPath = Bundle.main.path(forResource: "Jura-VariableFont_wght", ofType: "ttf"),
           let fontData = NSData(contentsOfFile: fontPath),
           let dataProvider = CGDataProvider(data: fontData),
           let font = CGFont(dataProvider) {
            CTFontManagerRegisterGraphicsFont(font, nil)
            
            let customFont = UIFont(name: "Jura-VariableFont_wght", size: UIFont.labelFontSize)
            UILabel.appearance().font = customFont
        } else {
            print("Failed to load font.")
        }
    }
}


