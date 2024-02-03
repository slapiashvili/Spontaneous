//
//  MainPageViewController.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

//TODO: add marks
//TODO: fix UI
//TODO: change the colors
//TODO: add searchbar logic
//TODO: better oranize the code: make sure to use setupviews
//TODO: make sure the constraints are dynamic
//TODO: add the other categories also
//TODO: move some logic to the viewModel
//TODO: make sure the searchbar is working


import UIKit

class MainPageViewController: UIViewController {

    var userNickname: String?
    var categoryViewModel = CategoryViewModel()
    var nicknameViewModel = NicknameViewModel.shared
    var girlImages: [UIImage] = []
    var imageIndex = 0
    var timer: Timer?

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

    let cellIdentifier = "Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .neoBackground
        view.addSubview(girlImageView)

        for i in 1...10 {
            if let image = UIImage(named: "gggirl\(i)") {
                girlImages.append(image)
            }
        }

        girlImageView.image = girlImages.first

        timer = Timer.scheduledTimer(timeInterval: 0.12, target: self, selector: #selector(updateGirlImage), userInfo: nil, repeats: true)

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

        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            self.timer?.invalidate()
            self.girlImageView.image = self.girlImages[2]
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

    @objc func updateGirlImage() {
        if imageIndex == girlImages.count * 3 {
            timer?.invalidate()
        } else {
            UIView.transition(with: girlImageView, duration: 0.5, options: .transitionCrossDissolve, animations: {
                self.girlImageView.image = self.girlImages[self.imageIndex % self.girlImages.count]
            }, completion: { _ in
                self.imageIndex += 1
            })
        }
    }
}


// MARK: - UICollectionViewDataSource

extension MainPageViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryViewModel.categories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
         cell.backgroundColor = .neoTextOpposite

         let category = categoryViewModel.categories[indexPath.item]

         let beforeNameLabel = UILabel()
         beforeNameLabel.text = category.categoryBeforeName
         beforeNameLabel.textColor = .neoBackground
         beforeNameLabel.textAlignment = .center
         beforeNameLabel.numberOfLines = 2
         beforeNameLabel.font = UIFont(name: "Jura", size: 15)
         beforeNameLabel.translatesAutoresizingMaskIntoConstraints = false

         let symbolImageView = UIImageView()
         symbolImageView.translatesAutoresizingMaskIntoConstraints = false
         symbolImageView.tintColor = .neoBackground

         if let symbolName = category.symbolName {
             let symbolImage = UIImage(systemName: symbolName)
             symbolImageView.image = symbolImage
         }

         let nameLabel = UILabel()
         nameLabel.text = category.categoryName
         nameLabel.textColor = .neoBackground
         nameLabel.textAlignment = .center
         nameLabel.font = UIFont(name: "Jura", size: 35)
         nameLabel.numberOfLines = 2
         nameLabel.translatesAutoresizingMaskIntoConstraints = false

         let stackView = UIStackView(arrangedSubviews: [beforeNameLabel, symbolImageView, nameLabel])
         stackView.axis = .vertical
         stackView.alignment = .center
         stackView.spacing = 5
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
