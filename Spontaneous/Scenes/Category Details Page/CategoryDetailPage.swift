//
//  CategoryDetailPage.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 29.01.24.
//

import UIKit

class CategoryDetailViewController: UIViewController {

    var category: GeneralCategory?
    var selectedCategory: GeneralCategory?     
    var categoryViewModel: CategoryViewModel?

    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 10
        return stackView
    }()

    private let categoryLabel: UILabel = {
        let label = UILabel()
        label.textColor = .neoTextColorBrownCream
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    }()

    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .neoTextColorBrownCream
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    private let instructionLabel: UILabel = {
        let label = UILabel()
        label.text = "Please choose from the filters below"
        label.textColor = .neoTextColorBrownCream
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.numberOfLines = 0
        return label
    }()

    private let filtersCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .neoBackground
        return collectionView
    }()
    
    let cellIdentifier = "FilterCell"

    private let randomizeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Randomize", for: .normal)
        button.setTitleColor(.neoButtonColorText, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.backgroundColor = .neoAnyColorYellow
        button.layer.cornerRadius = 10
        return button
    }()

    init(category: GeneralCategory, categoryViewModel: CategoryViewModel) {
        self.category = category
        self.categoryViewModel = categoryViewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .neoBackground

            if let category = category {
                categoryLabel.text = "\(category.categoryBeforeName) \(category.categoryName)"
                descriptionLabel.text = category.description
                selectedCategory = category
            }

            filtersCollectionView.delegate = self
            filtersCollectionView.dataSource = self
            filtersCollectionView.register(FilterCell.self, forCellWithReuseIdentifier: cellIdentifier)

            stackView.addArrangedSubview(categoryLabel)
            stackView.addArrangedSubview(descriptionLabel)
            stackView.addArrangedSubview(instructionLabel)
            stackView.addArrangedSubview(filtersCollectionView)

            view.addSubview(stackView)
            view.addSubview(randomizeButton)

            randomizeButton.addTarget(self, action: #selector(randomizeButtonTapped), for: .touchUpInside)

            setupConstraints()
        }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            instructionLabel.heightAnchor.constraint(equalToConstant: 30),
            
            filtersCollectionView.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 10),
            filtersCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            filtersCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            filtersCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),

            randomizeButton.topAnchor.constraint(equalTo: filtersCollectionView.bottomAnchor, constant: 10),
            randomizeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            randomizeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            randomizeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            randomizeButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

    @objc private func randomizeButtonTapped() {

        filtersCollectionView.reloadData()
    }


}
// MARK: - UICollectionViewDataSource

extension CategoryDetailViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return category?.filters.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FilterCell", for: indexPath) as? FilterCell else {
            fatalError("Failed to dequeue FilterCell.")
        }

        if let filter = selectedCategory?.filters[indexPath.item] {
            cell.filter = filter
            cell.backgroundColor = .neoTextColorGreen
        }

        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension CategoryDetailViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.bounds.width - 30) / 2
        let cellHeight = collectionView.bounds.height / 4
        return CGSize(width: cellWidth, height: cellHeight)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}

extension CategoryDetailViewController: UICollectionViewDelegate {
    
}
