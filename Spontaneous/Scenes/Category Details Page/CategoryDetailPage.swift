//
//  CategoryDetailPage.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 29.01.24.
//

import UIKit

class CategoryDetailViewController: UIViewController {

    //MARK: - Properties:
    
    var detailImageLoader: DetailImageLoader?
    var category: GeneralCategory?
    var selectedCategory: GeneralCategory?     
    var selectedFilterIndex: Int?
    var categoryViewModel: CategoryViewModel?
    private let stackView = UIStackView()
    private let categoryLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let instructionLabel = UILabel()
    private let girlImageView = UIImageView()
    private let randomizeButton = DoubleBorderButton()

    private let filtersCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .neoBackground
        return collectionView
    }()

    // MARK: - Constants
    lazy var cellIdentifier: String = {
        return "FilterCell"
    }()
    //MARK: - Initialization:
    init(category: GeneralCategory, categoryViewModel: CategoryViewModel) {
        self.category = category
        self.categoryViewModel = categoryViewModel
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Lifecycle
    override func viewDidLoad() {
            super.viewDidLoad()
            filtersCollectionView.register(FilterCell.self, forCellWithReuseIdentifier: cellIdentifier)
            setupUI()
            setupDelegates()
        }
    // MARK: - Setup Methods
    private func setupUI() {
        configureView()
        setupStackView()
        configureLabels()
        setupCategoryLabel()
        setupDescriptionLabel()
        setupInstructionLabel()
        setupConstraints()
        loadImageAfterDelay()
        setupGirlImageView()
        setupRandomizeButton()
    }

    private func setupDelegates() {
        filtersCollectionView.delegate = self
        filtersCollectionView.dataSource = self
    }
    
    private func configureView() {
        detailImageLoader = DetailImageLoader(girlImageView: girlImageView)
        view.backgroundColor = .neoBackground
        view.addSubview(stackView)
        view.addSubview(randomizeButton)
    }
    
    private func loadImageAfterDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.detailImageLoader?.stopAndSetImage(index: 14)
        }
    }
    
    private func setupStackView() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 15
        stackView.addArrangedSubview(categoryLabel)
        stackView.addArrangedSubview(descriptionLabel)
        stackView.addArrangedSubview(instructionLabel)
        stackView.addArrangedSubview(filtersCollectionView)
        stackView.addArrangedSubview(girlImageView)
    }
    
    private func configureLabels() {
        if let category = category {
            categoryLabel.text = "\(category.categoryBeforeName) \(category.categoryName)"
            descriptionLabel.text = category.description
            selectedCategory = category
        }
    }

    private func setupCategoryLabel() {
        categoryLabel.textColor = .neoAlwaysGreen
        categoryLabel.textAlignment = .center
        categoryLabel.font = UIFont(name: "Jura", size: 30)
    }
    
    private func setupDescriptionLabel() {
        descriptionLabel.textColor = .neoTextOpposite
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = UIFont(name: "Jura", size: 18)
        descriptionLabel.numberOfLines = 0
    }
    
    private func setupInstructionLabel() {
        instructionLabel.text = "Please choose from the filters below"
        instructionLabel.textColor = .neoAlwaysGreen
        instructionLabel.textAlignment = .center
        instructionLabel.font = UIFont(name: "Jura", size: 15)
        instructionLabel.numberOfLines = 0
    }

    private func setupGirlImageView() {
        girlImageView.contentMode = .scaleAspectFit
        girlImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(girlImageView)
    }
    
    private func setupRandomizeButton() {
        randomizeButton.translatesAutoresizingMaskIntoConstraints = false
        randomizeButton.setTitle("Randomize", for: .normal)
        randomizeButton.setTitleColor(.neoTextOpposite, for: .normal)
        randomizeButton.titleLabel?.font = UIFont(name: "Jura", size: 20)
        randomizeButton.backgroundColor = .neoBackground
        randomizeButton.addTarget(self, action: #selector(randomizeButtonTapped), for: .touchUpInside)
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            categoryLabel.topAnchor.constraint(equalTo: stackView.topAnchor),

            descriptionLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 10),

            instructionLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 40),

            filtersCollectionView.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 10),
            filtersCollectionView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            filtersCollectionView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            filtersCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -140),

            girlImageView.topAnchor.constraint(equalTo: filtersCollectionView.bottomAnchor, constant: 10),
            girlImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            girlImageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            girlImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),
            girlImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            randomizeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            randomizeButton.topAnchor.constraint(equalTo: girlImageView.bottomAnchor, constant: 20),
            randomizeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            randomizeButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/14),
            randomizeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/3)
        ])
    }
    
    // MARK: - Private Methods

    @objc private func randomizeButtonTapped() {
       
        let popupView = PopupView(frame: view.bounds)
        view.addSubview(popupView)
        popupView.animateIn()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            popupView.animateOut {
                popupView.removeFromSuperview()
                self.transitionToSecondViewController()
            }
        }
    }

    func transitionToSecondViewController() {
        guard let selectedFilterIndex = selectedFilterIndex,
              let selectedCategory = selectedCategory,
              selectedFilterIndex < selectedCategory.filters.count else {
            return
        }

        let selectedFilter = selectedCategory.filters[selectedFilterIndex]

        if let randomizedContent = categoryViewModel?.randomizeContent(for: selectedCategory, with: selectedFilter.filterName) {
            let randomizedResultPage = RandomizedResultPage(randomizedContent: randomizedContent)
            
            navigationController?.pushViewController(randomizedResultPage, animated: true)
        }
    }

}

// MARK: - UICollectionViewDataSource

extension CategoryDetailViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return category?.filters.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FilterCell", for: indexPath) as? FilterCell,
              let filter = category?.filters[indexPath.item] else {
            fatalError("Failed to dequeue FilterCell or get filter data.")
        }

        cell.filter = filter
        cell.isSelected = (indexPath.item == selectedFilterIndex)
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension CategoryDetailViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.bounds.width - 50) / 2
        let cellHeight = collectionView.bounds.height / 8
        return CGSize(width: cellWidth, height: cellHeight)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

extension CategoryDetailViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedFilterIndex = indexPath.item

        if let cell = collectionView.cellForItem(at: indexPath) as? FilterCell {
            cell.updateSelectionState(isSelected: true)
        }
    }

    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        selectedFilterIndex = nil

        if let cell = collectionView.cellForItem(at: indexPath) as? FilterCell {
            cell.updateSelectionState(isSelected: false)
        }

    }
}



