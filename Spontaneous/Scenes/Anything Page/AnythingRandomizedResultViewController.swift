//
//  AnythingRandomizedResultViewController.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 12.02.24.
//

import UIKit

final class AnythingRandomizedResultViewController: UIViewController {

    // MARK: - Properties

    private let resultLabelContainer = UIView()
    private let resultLabel = UILabel()
    private let resultImage = UIImageView()
    private let tryAgainButton = SingleBorderButton()
    private let backToMainMenuButton = SingleBorderButton()
    private var mainStackView = UIStackView()
    var randomizedResult: String?

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .neoBackground
        setupUI()
        displayResult()
    }

    // MARK: - UI Setup

    private func setupUI() {
        setupStackView()
        setupResultImage()
        setupResultLabel()
        setupTryAgainButton()
        setupBackButton()
        setupConstraints()
    }

    private func setupResultImage() {
        resultImage.image = UIImage(named: "randomized_answer")
        resultImage.contentMode = .scaleAspectFill
        view.addSubview(resultImage)
    }

    private func setupResultLabel() {
        resultLabel.font = UIFont(name: "Jura", size: 24)
        resultLabel.textAlignment = .center
        resultLabel.numberOfLines = 0
        resultLabelContainer.addSubview(resultLabel)
        resultLabelContainer.layer.borderWidth = 1
        resultLabelContainer.layer.borderColor = UIColor.neoAlwaysGreen.cgColor
        resultLabelContainer.layer.cornerRadius = 15
        resultLabelContainer.clipsToBounds = true
        view.addSubview(resultLabelContainer)
    }

    private func setupTryAgainButton() {
        tryAgainButton.setTitle("Try Again", for: .normal)
        tryAgainButton.backgroundColor = .neoTextOpposite
        tryAgainButton.setTitleColor(.neoBackground, for: .normal)
        tryAgainButton.layer.cornerRadius = 15
        tryAgainButton.clipsToBounds = true
        tryAgainButton.addTarget(self, action: #selector(tryAgain), for: .touchUpInside)
        view.addSubview(tryAgainButton)
    }

    private func setupBackButton() {
        backToMainMenuButton.setTitle("Back to Main Page", for: .normal)
        backToMainMenuButton.backgroundColor = .neoTextOpposite
        backToMainMenuButton.setTitleColor(.neoBackground, for: .normal)
        backToMainMenuButton.layer.cornerRadius = 15
        backToMainMenuButton.clipsToBounds = true
        backToMainMenuButton.addTarget(self, action: #selector(backToMainMenu), for: .touchUpInside)
        view.addSubview(backToMainMenuButton)
    }

    private func setupStackView() {
        mainStackView.axis = .vertical
        mainStackView.alignment = .center
        mainStackView.spacing = 20
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.addArrangedSubview(resultLabelContainer)
        mainStackView.addArrangedSubview(resultImage)
        mainStackView.addArrangedSubview(tryAgainButton)
        mainStackView.addArrangedSubview(backToMainMenuButton)

        view.addSubview(mainStackView)
    }

    private func setupConstraints() {
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        resultImage.translatesAutoresizingMaskIntoConstraints = false
        tryAgainButton.translatesAutoresizingMaskIntoConstraints = false
        backToMainMenuButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 130),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            resultLabelContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 130),
            resultLabelContainer.centerXAnchor.constraint(equalTo: mainStackView.centerXAnchor),
            resultLabelContainer.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor),
            resultLabelContainer.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor),

            resultLabel.topAnchor.constraint(equalTo: resultLabelContainer.topAnchor, constant: 10),
            resultLabel.leadingAnchor.constraint(equalTo: resultLabelContainer.leadingAnchor, constant: 10),
            resultLabel.centerXAnchor.constraint(equalTo: mainStackView.centerXAnchor),
            resultLabel.trailingAnchor.constraint(equalTo: resultLabelContainer.trailingAnchor, constant: -10),
            resultLabel.bottomAnchor.constraint(equalTo: resultLabelContainer.bottomAnchor, constant: -10),
            
            resultImage.topAnchor.constraint(equalTo: tryAgainButton.topAnchor, constant: -400),
            resultImage.centerXAnchor.constraint(equalTo: mainStackView.centerXAnchor),

            tryAgainButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -160),
            tryAgainButton.centerXAnchor.constraint(equalTo: mainStackView.centerXAnchor),
            tryAgainButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/16),
            tryAgainButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3),

            backToMainMenuButton.topAnchor.constraint(equalTo: tryAgainButton.bottomAnchor, constant: 20),
            backToMainMenuButton.centerXAnchor.constraint(equalTo: mainStackView.centerXAnchor),
            backToMainMenuButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/16),
            backToMainMenuButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3),
        ])
    }

    // MARK: - Private Methods

    @objc private func tryAgain() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func backToMainMenu() {
        navigationController?.pushViewController(MainPageViewController(), animated: true)
    }

    // MARK: - Result Handling

    private func displayResult() {
        resultLabel.text = randomizedResult
    }
}
