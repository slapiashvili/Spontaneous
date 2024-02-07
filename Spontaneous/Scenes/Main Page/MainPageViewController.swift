//
//  MainPageViewController.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import UIKit

class MainPageViewController: UIViewController {
    // MARK: - Properties
    private var imageLoader: ImageLoader?
    private var searchThrottleTimer: Timer?
    var userNickname: String?
    var filteredCategories: [GeneralCategory] = []
    var categoryViewModel = CategoryViewModel()
    var nicknameViewModel = NicknameViewModel.shared

    // MARK: - UI Components
    private let girlImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()

    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    private let categoryLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    private let searchTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()

    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()
    
    // MARK: - Constants
    lazy var cellIdentifier: String = {
        return "CustomCell"
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDelegates()
        configureNavigationBar()
        configureView()
        registerCollectionViewCell()
        loadImageAfterDelay()
        setupUI()
    }

    // MARK: - Setup Methods

    private func setupDelegates() {
        searchTextField.delegate = self
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    private func configureNavigationBar() {
        self.navigationItem.hidesBackButton = true
    }

    private func configureView() {
        imageLoader = ImageLoader(girlImageView: girlImageView)
        view.backgroundColor = .neoBackground
    }

    private func registerCollectionViewCell() {
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
    }

    private func loadImageAfterDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            self.imageLoader?.stopAndSetImage(index: 2)
        }
    }
    
    private func setupUI() {
        setupGirlImageView()
        setupWelcomeLabel()
        setupCategoryLabel()
        setupSearchBar()
        setupConstraints()
    }

    private func setupConstraints() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)

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
    
    private func setupGirlImageView() {
        girlImageView.contentMode = .scaleAspectFit
        girlImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(girlImageView)
    }
    
    private func setupWelcomeLabel() {
        welcomeLabel.textColor = .neoTextOpposite
        welcomeLabel.textAlignment = .center
        welcomeLabel.font = UIFont(name: "Jura", size: 20)
        welcomeLabel.text = "Hello, \(self.userNickname ?? "")"
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcomeLabel)
    }
    
    private func setupCategoryLabel() {
        categoryLabel.textColor = .neoTextOpposite
        categoryLabel.textAlignment = .center
        categoryLabel.font = UIFont(name: "Jura", size: 24)
        categoryLabel.text = "Choose a Category"
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(categoryLabel)
    }
    
    private func setupSearchBar() {
        searchTextField.placeholder = "Search..."
        searchTextField.borderStyle = .roundedRect
        searchTextField.layer.cornerRadius = 10
        searchTextField.backgroundColor = UIColor.neoTextField
        searchTextField.font = UIFont(name: "Jura", size: 18)
        searchTextField.textColor = UIColor.neoAlwaysGreen
        searchTextField.layer.borderWidth = 1
        searchTextField.layer.borderColor = UIColor.neoTextOpposite.cgColor
        searchTextField.autocorrectionType = .no
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchTextField)
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

// MARK: - UITextFieldDelegate

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
        searchThrottleTimer?.invalidate()
        searchThrottleTimer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
            if searchText.isEmpty {
                self.filteredCategories = self.categoryViewModel.categories
            } else {
                self.filteredCategories = self.categoryViewModel.categories.filter { category in
                    let lowercasedSearchText = searchText.lowercased()
                    let categoryNameContains = category.categoryName.lowercased().contains(lowercasedSearchText)
                    let categoryBeforeNameContains = category.categoryBeforeName.lowercased().contains(lowercasedSearchText)
                    
                    return categoryNameContains || categoryBeforeNameContains
                }
            }
            self.collectionView.reloadData()
        }
    }
}
