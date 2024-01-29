//
//  MainPageViewController.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//


import UIKit

class MainPageViewController: UIViewController {

    var userNickname: String?
    var categoryViewModel = CategoryViewModel()

    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .neoTextColorBrownCream
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .neoTextColorBrownCream
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    let searchTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Search..."
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .neoAnyColorYellow
        textField.tintColor = .brown
        return textField
    }()  
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .neoBackground
        return collectionView
    }()
    
    let cellIdentifier = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .neoBackground
        
        view.addSubview(welcomeLabel)
        welcomeLabel.text = "Hello, \(userNickname ?? "")"
        
        view.addSubview(categoryLabel)
        categoryLabel.text = "Choose a Category"
        
        view.addSubview(searchTextField)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        
        view.addSubview(collectionView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            categoryLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 5),
            categoryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            categoryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            searchTextField.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 10),
            searchTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            searchTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            searchTextField.heightAnchor.constraint(equalToConstant: 30),
            
            collectionView.topAnchor.constraint(equalTo: searchTextField.bottomAnchor, constant: 15),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10)
        ])
    }
    
}


// MARK: - UICollectionViewDataSource

extension MainPageViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryViewModel.categories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        cell.backgroundColor = .neoTextColorGreen

        let category = categoryViewModel.categories[indexPath.item]

        let beforeNameLabel = UILabel()
        beforeNameLabel.text = category.categoryBeforeName
        beforeNameLabel.textColor = .neoButtonColorText
        beforeNameLabel.textAlignment = .center
        beforeNameLabel.translatesAutoresizingMaskIntoConstraints = false

        let nameLabel = UILabel()
        nameLabel.text = category.categoryName
        nameLabel.textColor = .neoButtonColorText
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.systemFont(ofSize: 25)
        nameLabel.numberOfLines = 2 
        nameLabel.translatesAutoresizingMaskIntoConstraints = false

        let stackView = UIStackView(arrangedSubviews: [beforeNameLabel, nameLabel])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        cell.contentView.addSubview(stackView)
        
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 5),
            stackView.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -5),
            stackView.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -30)
        ])

        return cell
    }

}

// MARK: - UICollectionViewDelegateFlowLayout

extension MainPageViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.bounds.width - 25) / 2
        let cellHeight = collectionView.bounds.height / 4
        return CGSize(width: cellWidth, height: cellHeight)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
}

// MARK: - UICollectionViewDelegate

extension MainPageViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCategory = categoryViewModel.categories[indexPath.item]
        navigateToCategoryDetail(category: selectedCategory)
    }

    private func navigateToCategoryDetail(category: GeneralCategory) {
        let categoryDetailVC = CategoryDetailViewController(category: category, categoryViewModel: CategoryViewModel())

        navigationController?.pushViewController(categoryDetailVC, animated: true)
    }
}
