//
//  AnythingViewController.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 12.02.24.
//

import UIKit

final class AnythingViewController: UIViewController {

    // MARK: - UI Components
    private let nameLabel = UILabel()
    private let instructionLabel = UILabel()
    private let tableView = UITableView()
    private var choices = ["Choice 1", "Choice 2", "Choice 3", "Choice 4"]
    private let randomizeButton = DoubleBorderButton()
    private var popupView: PopupView?
    private var customAlert: CustomAlert?
    private var filledChoices = [String]()
    private let addCellButton = UIButton()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .neoBackground
        setupUI()
    }

    // MARK: - UI Setup

    private func setupUI() {
        setupNameLabel()
        setupInstructionLabel()
        setupTableView()
        setupAddCellButton()
        setupRandomizeButton()
        setupConstraints()
    }

    private func setupNameLabel() {
        nameLabel.text = "Randomize Anything!"
        nameLabel.textColor = .neoTextOpposite
        nameLabel.font = UIFont(name: "Jura", size: 30)
        nameLabel.textAlignment = .center
        view.addSubview(nameLabel)
    }

    private func setupInstructionLabel() {
        instructionLabel.text = "Simply type in different options to choose from and we will help you decide!"
        instructionLabel.textColor = .neoTextOpposite
        instructionLabel.font = UIFont(name: "Jura", size: 20)
        instructionLabel.textAlignment = .center
        instructionLabel.numberOfLines = 0
        view.addSubview(instructionLabel)
    }

    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        tableView.register(ChoiceTableViewCell.self, forCellReuseIdentifier: "choiceCell")
        view.addSubview(tableView)
    }
    
    private func setupAddCellButton() {
        let plusSymbolImage = UIImage(systemName: "plus.rectangle.on.rectangle")
        addCellButton.setImage(plusSymbolImage, for: .normal)
        addCellButton.tintColor = .neoTextOpposite
        addCellButton.addTarget(self, action: #selector(addCellButtonTapped), for: .touchUpInside)
        view.addSubview(addCellButton)
    }


    private func setupRandomizeButton() {
        randomizeButton.setTitle("Randomize", for: .normal)
        randomizeButton.addTarget(self, action: #selector(randomizeButtonTapped), for: .touchUpInside)
        randomizeButton.backgroundColor = .neoTextOpposite
        randomizeButton.setTitle("Randomize", for: .normal)
        randomizeButton.setTitleColor(.neoBackground, for: .normal)
        randomizeButton.titleLabel?.font = UIFont(name: "Jura", size: 20)
        randomizeButton.layer.cornerRadius = 15
        randomizeButton.clipsToBounds = true
        view.addSubview(randomizeButton)
    }

    private func setupConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        addCellButton.translatesAutoresizingMaskIntoConstraints = false
        randomizeButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            instructionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            instructionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            addCellButton.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 5),
            addCellButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            addCellButton.heightAnchor.constraint(equalToConstant: 30),

            tableView.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 40),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            tableView.heightAnchor.constraint(equalToConstant: CGFloat(choices.count * 100)),
            
            randomizeButton.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 10),
            randomizeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            randomizeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            randomizeButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/14),
            randomizeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3)
        ])
    }

    // MARK: - Private Methods
    
    @objc private func randomizeButtonTapped() {
        let cellCount = tableView.numberOfRows(inSection: 0)
        filledChoices.removeAll()

        for row in 0..<cellCount {
            let indexPath = IndexPath(row: row, section: 0)
            if let cell = tableView.cellForRow(at: indexPath) as? ChoiceTableViewCell {
                let choiceText = cell.choicesTextField.text
                if let text = choiceText, !text.isEmpty {
                    filledChoices.append(text)
                }
            }
        }

        if filledChoices.count >= 2 {
            showPopupAndNavigate()
        } else {
            showTextFieldAlert()
        }
    }

    private func showPopupAndNavigate() {
        let popupView = PopupView(frame: view.bounds)
        view.addSubview(popupView)

        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.navigateToRandomizedResult()
            popupView.removeFromSuperview()
        }
    }

    private func navigateToRandomizedResult() {
        guard let randomizedChoice = filledChoices.randomElement() else {
            return
        }

        let resultViewController = AnythingRandomizedResultViewController()
        resultViewController.randomizedResult = "\(randomizedChoice)"
        navigationController?.pushViewController(resultViewController, animated: true)
    }
    
    private func showTextFieldAlert() {
        customAlert = CustomAlert(message: "", imageName: "textfield_alert")
        customAlert?.gotItAction = { [weak self] in
            self?.dismissTextFieldAlert()
        }
        view.addSubview(customAlert!)
    }
    
    private func dismissTextFieldAlert() {
        customAlert?.dismissCustomAlert()
    }
    
    
    
    @objc private func addCellButtonTapped() {
        choices.append("New Choice")
        tableView.reloadData()
    }

}

// MARK: - TableView DataSource and Delegate

extension AnythingViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choices.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "choiceCell", for: indexPath) as! ChoiceTableViewCell

        cell.choicesTextField.placeholder = "Choice \(indexPath.row + 1)"
        return cell
    }
}
