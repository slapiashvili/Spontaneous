//
//  TextField.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 13.02.24.
//

import UIKit

final class NeoTextField: UITextField {
    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTextField()
    }

    // MARK: - Setup

    private func setupTextField() {
        self.borderStyle = .roundedRect
        self.textColor = .white
        self.backgroundColor = UIColor.neoTextField
        self.font = UIFont(name: "Jura", size: 18)
        self.textColor = UIColor.neoAlwaysGreen
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.neoTextOpposite.cgColor
        self.layer.cornerRadius = 5
        self.autocorrectionType = .no
        self.tintColor = .clear
    

        // Set placeholder text color to white
        self.attributedPlaceholder = NSAttributedString(
            string: self.placeholder ?? "",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
    }
}
