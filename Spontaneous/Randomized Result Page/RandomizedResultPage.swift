//
//  RandomizedResultPage.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 30.01.24.
//

//TODO: add marks
//TODO: fix UI
//TODO: better oranize the code: make sure to use setupviews
//TODO: make sure the constraints are dynamic



import UIKit

class RandomizedResultPage: UIViewController {
    var randomizedContent: FilterContent?
    
    init(randomizedContent: FilterContent) {
        super.init(nibName: nil, bundle: nil)
        self.randomizedContent = randomizedContent
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .neoBackground
        
        let titleLabel = UILabel()
        titleLabel.text = "Your Randomized Result"
        titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        let imageView = UIImageView(image: randomizedContent?.image)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
        
        let fullNameLabel = UILabel()
        fullNameLabel.text = randomizedContent?.fullName
        fullNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        fullNameLabel.numberOfLines = 0
        fullNameLabel.textAlignment = .center

        let descriptionLabel = UILabel()
        descriptionLabel.text = randomizedContent?.description
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center  
        
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(fullNameLabel)
        stackView.addArrangedSubview(descriptionLabel)
        
        let mainMenuButton = UIButton(type: .system)
        mainMenuButton.setTitle("Back to Main Menu", for: .normal)
        mainMenuButton.addTarget(self, action: #selector(backToMainMenu), for: .touchUpInside)
        
        let tryAgainButton = UIButton(type: .system)
        tryAgainButton.setTitle("Try Again", for: .normal)
        tryAgainButton.addTarget(self, action: #selector(tryAgain), for: .touchUpInside)
        
        stackView.addArrangedSubview(mainMenuButton)
        stackView.addArrangedSubview(tryAgainButton)
        
        view.addSubview(titleLabel)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
    
    @objc func backToMainMenu() {
        navigationController?.pushViewController(MainPageViewController(), animated: true)
    }
    
    @objc func tryAgain() {
        navigationController?.popViewController(animated: true)
    }
}
