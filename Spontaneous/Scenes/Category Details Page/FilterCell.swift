//
//  FilterCell.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 29.01.24.
//

import UIKit

class FilterCell: UICollectionViewCell {
    var filter: String? {
        didSet {
            textLabel.text = filter
        }
    }

    private var textLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupSubviews() {
        addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
        
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            textLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }
}
