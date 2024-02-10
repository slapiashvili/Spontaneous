//
//  RandomizedResultPage.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 30.01.24.
//

//TODO: fix UI

import UIKit

class RandomizedResultPage: UIViewController {
    //MARK: - Properties:
    var randomizedContent: FilterContent?
    let titleLabel = UILabel()
    let stackView = UIStackView()
    let fullNameLabel = UILabel()
    let descriptionLabel = UILabel()
    let mainMenuButton = SingleBorderButton()
    let tryAgainButton = SingleBorderButton()
    let imageView = UIImageView()
    //MARK: - Initialization:

    init(randomizedContent: FilterContent) {
        super.init(nibName: nil, bundle: nil)
        self.randomizedContent = randomizedContent
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Lifecycle:

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    //MARK: - Private Methods:

    private func setupUI(){
        confifureView()
        setupStackView()
        setupTitleLabel()
        setupDescriotionLabel()
        setupImageView()
        setupFullNameLabel()
        setupMainMenuButton()
        setupTryAgainButton()
        setupConstraints()
        
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.neoAlwaysGreen.cgColor
        view.layer.cornerRadius = 10

    }
    
    private func confifureView() {
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .neoBackground
        view.addSubview(titleLabel)
        view.addSubview(stackView)
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(fullNameLabel)
        stackView.addArrangedSubview(descriptionLabel)
        stackView.addArrangedSubview(mainMenuButton)
        stackView.addArrangedSubview(tryAgainButton)
    }
    
    private func setupTitleLabel() {
        titleLabel.text = "Your Randomized Result"
        titleLabel.font = UIFont(name: "Jura", size: 28)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupFullNameLabel() {
        fullNameLabel.text = randomizedContent?.fullName
        fullNameLabel.font = UIFont(name: "Jura", size: 20)
        fullNameLabel.textColor = .neoAlwaysGreen
        fullNameLabel.numberOfLines = 0
        fullNameLabel.textAlignment = .center
    }
    
    private func setupDescriotionLabel() {
        descriptionLabel.text = randomizedContent?.description
        descriptionLabel.font = UIFont(name: "Jura", size: 16)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
    }
    
    private func setupImageView() {
        imageView.image = randomizedContent?.image
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
    }
    
    private func setupMainMenuButton() {
        mainMenuButton.setTitle("Back to Main Menu", for: .normal)
        mainMenuButton.titleLabel?.font = UIFont(name: "Jura", size: 18)
        mainMenuButton.addTarget(self, action: #selector(backToMainMenu), for: .touchUpInside)
    }

    private func setupTryAgainButton() {
        tryAgainButton.setTitle("Try Again", for: .normal)
        tryAgainButton.titleLabel?.font = UIFont(name: "Jura", size: 18)
        tryAgainButton.addTarget(self, action: #selector(tryAgain), for: .touchUpInside)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            mainMenuButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/16),
            mainMenuButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3),
            
            tryAgainButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/16),
            tryAgainButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3)
        ])
    }
    
    //MARK: - Navigation functions:

    @objc func backToMainMenu() {
        navigationController?.pushViewController(MainPageViewController(), animated: true)
    }
    
    @objc func tryAgain() {
        navigationController?.popViewController(animated: true)
    }
}
