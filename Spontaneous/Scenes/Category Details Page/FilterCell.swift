//
//  FilterCell.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 29.01.24.
//

import UIKit

class FilterCell: UICollectionViewCell {
    var filter: Filter? {
        didSet {
            updateUI()
        }
    }

    private var filterLabel: UILabel = {
        let label = UILabel()
        label.textColor = .neoTextOpposite
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 10
        label.textAlignment = .center
        return label
    }()

    override var isSelected: Bool {
        didSet {
            updateSelectionState(isSelected: false)
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupSubviews() {
        addSubview(filterLabel)
        filterLabel.translatesAutoresizingMaskIntoConstraints = false

        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true

        NSLayoutConstraint.activate([
            filterLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            filterLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            filterLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            filterLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }

    private func updateUI() {
        guard let filter = filter else {
            return
        }
        filterLabel.text = filter.filterName
    }

    func updateSelectionState(isSelected: Bool) {
        if isSelected {
            filterLabel.layer.borderColor = UIColor.neoAlwaysGreen.cgColor
            filterLabel.textColor = .neoAlwaysGreen
        } else {
            filterLabel.layer.borderColor = UIColor.neoTextOpposite.cgColor
            filterLabel.textColor = .neoTextOpposite
        }
    }
}
