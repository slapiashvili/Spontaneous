//
//  NicknameViewController.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 24.01.24.
//


//TODO: fix UI
//TODO: dynamic constaints
//TODO: add "or"
//TODO: add a viewModel

import UIKit


class NicknameViewController: UIViewController {

        var randomizedLabel: UILabel!
        var containerView: UIView!
        var userNickname: String?           
    let destinationViewController = MainPageViewController()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .neoBackground
        self.navigationItem.hidesBackButton = true
        setupContainerView()
        setupRandomizeContainer()
    }
    
    func setupContainerView() {
        containerView = UIView()
        containerView.backgroundColor = .neoTextOpposite
        containerView.layer.cornerRadius = 20
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)

        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4),
            containerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3),
            containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.height * 1/8),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.bounds.width * 1/8),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.bounds.width * 1/8),
        ])

        setupLabel(in: containerView)
        setupTextField(in: containerView)
        setupConfirmButton(in: containerView)
    }

    func setupLabel(in containerView: UIView) {
        let label = UILabel()
        label.text = "Please enter a nickname"
        label.textColor = .neoBackground
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(label)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            label.heightAnchor.constraint(equalToConstant: 20) 
        ])
    }

    func setupTextField(in containerView: UIView) {
        let textField = UITextField()
        textField.backgroundColor = .neoPrimaryButtonColorGreen
        textField.textColor = .neoBackground
        textField.textAlignment = .center
        textField.layer.cornerRadius = 10
        textField.autocorrectionType = .no
        textField.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(textField)

        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 60),
            textField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            textField.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 1/5)
        ])
        
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)

    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
            userNickname = textField.text
        }

    func setupConfirmButton(in containerView: UIView) {
        let confirmButton = UIButton()
        confirmButton.setTitle("Confirm", for: .normal)
        confirmButton.backgroundColor = .neoBackground
        confirmButton.setTitleColor(UIColor(named: "neoTextOpposite"), for: .normal)
        confirmButton.layer.cornerRadius = 10
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(confirmButton)

        confirmButton.addTarget(self, action: #selector(confirmNickname), for: .touchUpInside)

        NSLayoutConstraint.activate([
            confirmButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 120),
            confirmButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            confirmButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            confirmButton.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 1/5)
        ])
    
    }
    
    
    @objc func confirmNickname() {
        guard let textField = containerView.subviews.compactMap({ $0 as? UITextField }).first else {
            return
        }

        let enteredText = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)

        if enteredText?.isEmpty ?? true {
            displayErrorMessage("Nickname can not be empty.")
        } else {
            self.destinationViewController.userNickname = enteredText
            navigationController?.pushViewController(self.destinationViewController, animated: true)
        }
    }


        func displayErrorMessage(_ message: String) {
        let errorLabel = UILabel()
        errorLabel.text = message
        errorLabel.textColor = .red
        errorLabel.textAlignment = .center
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(errorLabel)

        NSLayoutConstraint.activate([
            errorLabel.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 10),
            errorLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            errorLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            errorLabel.heightAnchor.constraint(equalToConstant: 20)
        ])


    }
    
    func displaySuccessMessage(_ message: String) {
        let successLabel = UILabel()
        successLabel.text = message
        successLabel.textColor = .green
        successLabel.textAlignment = .center
        successLabel.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(successLabel)

        NSLayoutConstraint.activate([
            successLabel.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 10),
            successLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            successLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            successLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        navigationController?.pushViewController(self.destinationViewController, animated: true)


    }
    
    func setupRandomizeContainer() {
        let randomizeContainer = UIView()
        randomizeContainer.backgroundColor = .neoTextOpposite
        randomizeContainer.layer.cornerRadius = 20
        randomizeContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(randomizeContainer)

        NSLayoutConstraint.activate([
            randomizeContainer.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: view.bounds.height * 1/8),
            randomizeContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            randomizeContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/4),
            randomizeContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3),
            randomizeContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.bounds.width * 1/8),
            randomizeContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.bounds.width * 1/8),
        ])

        setupRandomizeLabel(in: randomizeContainer)
        setupRandomizeButton(in: randomizeContainer)
        setupRandomizedLabel(in: randomizeContainer)
    }

    func setupRandomizeLabel(in randomizeContainer: UIView) {
        let label = UILabel()
        label.text = "Let us choose a random nickname for you"
        label.textColor = .neoBackground
        label.textAlignment = .center
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        randomizeContainer.addSubview(label)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: randomizeContainer.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: randomizeContainer.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: randomizeContainer.trailingAnchor, constant: -20),
            label.heightAnchor.constraint(equalTo: randomizeContainer.heightAnchor, multiplier: 1/5)
        ])
    }

    func setupRandomizeButton(in randomizeContainer: UIView) {
        let randomizeButton = UIButton()
        randomizeButton.setTitle("Randomize", for: .normal)
        randomizeButton.backgroundColor = .neoBackground
        randomizeButton.setTitleColor(UIColor(named: "neoTextOpposite"), for: .normal)
        randomizeButton.layer.cornerRadius = 10
        randomizeButton.addTarget(self, action: #selector(randomizeNickname), for: .touchUpInside)
        randomizeButton.translatesAutoresizingMaskIntoConstraints = false
        randomizeContainer.addSubview(randomizeButton)

        NSLayoutConstraint.activate([
            randomizeButton.topAnchor.constraint(equalTo: randomizeContainer.topAnchor, constant: 80),
            randomizeButton.leadingAnchor.constraint(equalTo: randomizeContainer.leadingAnchor, constant: 20),
            randomizeButton.trailingAnchor.constraint(equalTo: randomizeContainer.trailingAnchor, constant: -20),
            randomizeButton.heightAnchor.constraint(equalTo: randomizeContainer.heightAnchor, multiplier: 1/5)
        ])
    }

    func setupRandomizedLabel(in randomizeContainer: UIView) {
            randomizedLabel = UILabel()
            randomizedLabel.text = ""
            randomizedLabel.textColor = .neoBackground
            randomizedLabel.textAlignment = .center
            randomizedLabel.numberOfLines = 2
            randomizedLabel.lineBreakMode = .byWordWrapping
            randomizedLabel.translatesAutoresizingMaskIntoConstraints = false
            randomizeContainer.addSubview(randomizedLabel)

            NSLayoutConstraint.activate([
                randomizedLabel.topAnchor.constraint(equalTo: randomizeContainer.topAnchor, constant: 120),
                randomizedLabel.leadingAnchor.constraint(equalTo: randomizeContainer.leadingAnchor, constant: 20),
                randomizedLabel.trailingAnchor.constraint(equalTo: randomizeContainer.trailingAnchor, constant: -20),
                randomizedLabel.heightAnchor.constraint(equalToConstant: 80)
            ])
        }
    let nicknames = ["Hunter", "Scout", "Teacup", "Maverick", "Shadow", "Breeze", "Blaze", "Nova", "Whisper", "Pebble", "Thunder", "Sapphire", "Ghost", "Luna", "Crimson", "Panda", "Echo", "Raven", "Frost", "Phoenix", "Jazz", "Rocket", "Cascade", "Titan", "Spartan", "Zephyr", "Bolt", "Pixel", "Blizzard", "Starlight"]

    @objc func randomizeNickname() {
        if let randomNickname = nicknames.randomElement() {
            userNickname = randomNickname
            self.destinationViewController.userNickname = randomNickname
            navigationController?.pushViewController(self.destinationViewController, animated: true)

        }
    }
}

