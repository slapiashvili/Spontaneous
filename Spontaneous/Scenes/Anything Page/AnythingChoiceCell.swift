//
//  ChoiceCell.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 13.02.24.
//
import UIKit

final class ChoiceTableViewCell: UITableViewCell {

    var choicesTextField = NeoTextField()

    var spaceView: UIView = {
        let spaceView = UIView()
        spaceView.backgroundColor = .neoBackground
        spaceView.translatesAutoresizingMaskIntoConstraints = false
        return spaceView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupTextField()
        setupCell()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTextField() {
        choicesTextField.translatesAutoresizingMaskIntoConstraints = false
        choicesTextField.textColor = .white
        contentView.addSubview(choicesTextField)
    }

    private func setupCell() {
        contentView.addSubview(spaceView)

        NSLayoutConstraint.activate([
            choicesTextField.topAnchor.constraint(equalTo: contentView.topAnchor),
            choicesTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            choicesTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            choicesTextField.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),

            spaceView.topAnchor.constraint(equalTo: choicesTextField.bottomAnchor, constant: 8),
            spaceView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            spaceView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            spaceView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            spaceView.heightAnchor.constraint(equalToConstant: 10)
        ])
    }
}
