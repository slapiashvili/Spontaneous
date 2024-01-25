//
//  MainPageViewController.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import UIKit

class MainPageViewController: UIViewController {

    var userNickname: String?
    let topStackView = UIStackView()
    let welcomeLabel = UILabel()
    let chooseCategoryLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .neoBackground

        setupTopStackView()
        setupConstraints()
    }

    // MARK: - Setup Functions

    func setupTopStackView() {
        topStackView.axis = .vertical
        topStackView.alignment = .center
        topStackView.spacing = 15
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topStackView)

        setupWelcomeLabel()
        setupChooseCategoryLabel()
    }

    func setupWelcomeLabel() {
        welcomeLabel.text = "Welcome, \(userNickname ?? "")"
        welcomeLabel.textColor = .neoTextColorBrownCream
        welcomeLabel.textAlignment = .center
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        topStackView.addArrangedSubview(welcomeLabel)
    }

    func setupChooseCategoryLabel() {
        chooseCategoryLabel.text = "Choose a Category"
        chooseCategoryLabel.textColor = .neoTextColorGreen
        chooseCategoryLabel.textAlignment = .center
        chooseCategoryLabel.translatesAutoresizingMaskIntoConstraints = false
        topStackView.addArrangedSubview(chooseCategoryLabel)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            topStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            topStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
        ])
    }
}
