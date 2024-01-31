//
//  navigationCoordinator.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import SwiftUI
import UIKit

class NavigationCoordinator {
    private let holder: NavigationStackHolder

    init(holder: NavigationStackHolder) {
        self.holder = holder
    }
    
    func pushToNicknamePage() {
        guard let viewController = holder.viewController else { return }
        let view = NicknameViewController(navigationCoordinator: NavigationCoordinator(holder: holder), holder: holder)
        viewController.navigationController?.pushViewController(view.viewController, animated: true)
    }

    func pushToMainPage() {
        guard let viewController = holder.viewController else { return }
        let view = MainPageViewController()
        view.nicknameViewModel = NicknameViewModel.shared
        view.userNickname = NicknameViewModel.shared.userNickname
        viewController.navigationController?.pushViewController(view, animated: true)
    }

}
