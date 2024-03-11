//
//  AnythingCell.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 12.02.24.
//

import UIKit

final class AnythingCell: UICollectionViewCell {

    // MARK: - Properties

    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "anything")
        return imageView
    }()

    private let roundedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .neoBackground
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.neoGreen.cgColor
        return view
    }()

    private let innerRoundedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 8
        return view
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .neoTextOpposite
        label.textAlignment = .center
        label.text = "randomize"
        label.font = UIFont(name: "Jura", size: 16)
        return label
    }()

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .neoTextOpposite
        label.textAlignment = .center
        label.text = "anything"
        label.font = UIFont(name: "Jura", size: 27)
        return label
    }()

    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        backgroundColor = .neoBackground
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func setupViews() {
        contentView.addSubview(roundedView)
        contentView.addSubview(imageView)
        roundedView.addSubview(innerRoundedView)
        innerRoundedView.addSubview(label)
        innerRoundedView.addSubview(nameLabel)
        setupConstraints()
    }
    
        private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        roundedView.translatesAutoresizingMaskIntoConstraints = false
        innerRoundedView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false

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
            nameLabel.centerXAnchor.constraint(equalTo: innerRoundedView.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20)
        ])
    }
}

