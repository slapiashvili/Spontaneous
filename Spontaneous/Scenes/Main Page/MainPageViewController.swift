//
//  MainPageViewController.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

//TODO: add marks
//TODO: better oranize the code: make sure to use setupviews
//TODO: make sure the constraints are dynamic
//TODO: move some logic to the viewModel

import UIKit

class MainPageViewController: UIViewController {
    
    private var imageLoader: ImageLoader?
    var userNickname: String?
    var filteredCategories: [GeneralCategory] = []
    var categoryViewModel = CategoryViewModel()
    var nicknameViewModel = NicknameViewModel.shared


    let girlImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .neoTextOpposite
        label.textAlignment = .center
        label.font = UIFont(name: "Jura", size: 20)
        return label
    }()

    let categoryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .neoTextOpposite
        label.textAlignment = .center
        label.font = UIFont(name: "Jura", size: 24)
        return label
    }()

    let searchTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Search..."
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 10
        textField.backgroundColor = UIColor.neoTextField
        textField.font = UIFont(name: "Jura", size: 18)
        textField.autocorrectionType = .no
        textField.textColor = UIColor.neoAlwaysGreen
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.neoTextOpposite.cgColor

        return textField
    }()


    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .neoBackground
        return collectionView
    }()

    let cellIdentifier = "CustomCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .neoBackground
        view.addSubview(girlImageView)
        imageLoader = ImageLoader(girlImageView: girlImageView)

        searchTextField.delegate = self
        searchTextField.autocorrectionType = .no

        view.addSubview(welcomeLabel)
        welcomeLabel.text = "Hello, \(userNickname ?? "")"

        view.addSubview(categoryLabel)
        categoryLabel.text = "Choose a Category"

        view.addSubview(searchTextField)

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)

        view.addSubview(collectionView)

        setupConstraints()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            self.imageLoader?.stopAndSetImage(index: 2)
        }

    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([

            girlImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            girlImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            girlImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            girlImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7),

            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            categoryLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 5),
            categoryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
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
        return searchTextField.text?.isEmpty == false ? filteredCategories.count : categoryViewModel.categories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! CustomCollectionViewCell

        let category: GeneralCategory
        if searchTextField.text?.isEmpty == false {
            category = filteredCategories[indexPath.item]
        } else {
            category = categoryViewModel.categories[indexPath.item]
        }

        cell.configureCell(category: category, searchText: searchTextField.text)

        if let symbolName = category.symbolName {
            let symbolImage = UIImage(named: symbolName)
            cell.imageView.image = symbolImage
        }

        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension MainPageViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.bounds.width - 25) / 2
        let cellHeight = view.bounds.height / 3
        let symbolHeight = (2 * cellHeight) / 3
        let roundedRectHeight = cellHeight / 3

        return CGSize(width: cellWidth, height: cellHeight)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}


// MARK: - UICollectionViewDelegate

class CustomCollectionViewCell: UICollectionViewCell {
    
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let roundedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .neoBackground
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.neoAlwaysGreen.cgColor
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        backgroundColor = .neoBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let innerRoundedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 8
        
        return view
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .neoTextOpposite
        label.textAlignment = .center
        label.text = "randomize"
        label.font = UIFont(name: "Jura", size: 16)
        return label
    }()
    
    let anotherLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .neoTextOpposite
        label.textAlignment = .center
        label.font = UIFont(name: "Jura", size: 16)
        return label

    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .neoTextOpposite
        label.textAlignment = .center
        label.font = UIFont(name: "Jura", size: 27)
        return label
    }()

    private func setupViews() {
        contentView.addSubview(roundedView)
        contentView.addSubview(imageView)
        roundedView.addSubview(innerRoundedView)
        innerRoundedView.addSubview(label)
        innerRoundedView.addSubview(anotherLabel)
        innerRoundedView.addSubview(nameLabel)


        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),

            roundedView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -80),
            roundedView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            roundedView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            roundedView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            innerRoundedView.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
            innerRoundedView.centerYAnchor.constraint(equalTo: roundedView.centerYAnchor),
            innerRoundedView.widthAnchor.constraint(equalTo: roundedView.widthAnchor, multiplier: 0.8),
            innerRoundedView.heightAnchor.constraint(equalTo: roundedView.heightAnchor, multiplier: 0.8),

            label.centerXAnchor.constraint(equalTo: innerRoundedView.centerXAnchor),
            label.topAnchor.constraint(equalTo: innerRoundedView.topAnchor, constant: 55),
            anotherLabel.centerXAnchor.constraint(equalTo: innerRoundedView.centerXAnchor),
            anotherLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 2),
            nameLabel.centerXAnchor.constraint(equalTo: innerRoundedView.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: anotherLabel.bottomAnchor, constant: 2)
        ])
    }



    func configureCell(category: GeneralCategory, searchText: String?) {
        if let symbolName = category.symbolName {
            let symbolImage = UIImage(named: symbolName)
            imageView.image = symbolImage
        }

        anotherLabel.text = category.categoryBeforeName
        nameLabel.text = category.categoryName

        if let searchText = searchText?.lowercased(), !searchText.isEmpty {
            if nameLabel.text?.lowercased().contains(searchText) == true ||
               anotherLabel.text?.lowercased().contains(searchText) == true {
                contentView.isHidden = false
            } else {
                contentView.isHidden = true
            }
        } else {
            contentView.isHidden = false
        }
    }


}

extension MainPageViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCategory = categoryViewModel.categories[indexPath.item]
        navigateToCategoryDetail(category: selectedCategory)
    }

    private func navigateToCategoryDetail(category: GeneralCategory) {
        let categoryDetailViewController = CategoryDetailViewController(category: category, categoryViewModel: categoryViewModel)
        self.navigationController?.pushViewController(categoryDetailViewController, animated: true)
    }
}

extension MainPageViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newText = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        updateFilteredCategories(searchText: newText)
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    private func updateFilteredCategories(searchText: String) {
        print("Search Text: \(searchText)")
        
        if searchText.isEmpty {
            filteredCategories = []
        } else {
            filteredCategories = categoryViewModel.categories.filter { category in
                let lowercasedSearchText = searchText.lowercased()
                let categoryNameContains = category.categoryName.lowercased().contains(lowercasedSearchText)
                let categoryBeforeNameContains = category.categoryBeforeName.lowercased().contains(lowercasedSearchText)
                
                return categoryNameContains || categoryBeforeNameContains
            }
        }
        collectionView.reloadData()
    }
}
