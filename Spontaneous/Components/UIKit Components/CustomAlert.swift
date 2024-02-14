//
//  CustomAlert.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 11.02.24.
//

import UIKit

final class CustomAlert: UIView {

    private let blurEffectView: UIVisualEffectView
    private var customAlertView: UIView
    private var imageView: UIImageView
    private var gotItButton: SingleBorderButton

    var gotItAction: (() -> Void)?

    init(message: String, imageName: String) {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height

        let alertWidth = (2/3) * screenWidth + 40
        let alertHeight = (2/5) * screenHeight - 20
        let alertX = (screenWidth - alertWidth) / 2
        let alertY = (screenHeight - alertHeight) / 2

        customAlertView = UIView(frame: CGRect(x: alertX, y: alertY, width: alertWidth, height: alertHeight))
        customAlertView.backgroundColor = .clear
        customAlertView.layer.cornerRadius = 10

        let imageViewWidth = alertWidth - 20
        let imageViewHeight = alertHeight - 120
        imageView = UIImageView(frame: CGRect(x: 10, y: 60, width: imageViewWidth, height: imageViewHeight))
        if let image = UIImage(named: imageName) {
            imageView.image = image
            imageView.contentMode = .scaleAspectFill
        }

        let buttonWidth = 100
        let buttonHeight = 60
        gotItButton = SingleBorderButton()
        gotItButton.frame = CGRect(x: (Int(alertWidth) - buttonWidth) / 2, y: Int(alertHeight) - 40, width: buttonWidth, height: buttonHeight)
        gotItButton.setTitle("Got it!", for: .normal)

        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = UIScreen.main.bounds

        super.init(frame: UIScreen.main.bounds)

        self.gotItAction?()

        addSubview(blurEffectView)
        addSubview(customAlertView)
        customAlertView.addSubview(imageView)
        customAlertView.addSubview(gotItButton)
        
        gotItButton.addTarget(self, action: #selector(dismissCustomAlert), for: .touchUpInside)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func dismissCustomAlert() {
        removeFromSuperview()
    }
}
