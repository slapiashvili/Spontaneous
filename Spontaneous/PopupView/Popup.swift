//
//  Popup.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 10.02.24.
//

import UIKit

class PopupView: UIView {
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    //MARK: - Private Methods

    private func setupView() {
        backgroundColor = UIColor.neoBackground
        let label = UILabel()
        label.text = "Randomizing in Progress ..."
        label.font = UIFont(name: "Jura", size: 20)
        label.textColor = .neoTextOpposite
        addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 100)
        ])
        
        animateSequentialDots()
    }
    
    private func animateSequentialDots() {
        let numberOfDots = 10
        let radius: CGFloat = 50.0
        let dotSize: CGFloat = 10.0
        let angleIncrement = 2 * CGFloat.pi / CGFloat(numberOfDots)
        
        for i in 0..<numberOfDots {
            let angle = CGFloat(i) * angleIncrement
            let x = radius * cos(angle) + bounds.width / 2
            let y = radius * sin(angle) + bounds.height / 2
            
            let dotView = UIView(frame: CGRect(x: x, y: y, width: dotSize, height: dotSize))
            dotView.backgroundColor = UIColor.neoAlwaysGreen
            dotView.layer.cornerRadius = dotSize / 2
            addSubview(dotView)
            
            dotView.alpha = 0.0
            dotView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
            UIView.animate(withDuration: 0.05, delay: Double(i) * 0.1, options: [.curveEaseInOut], animations: {
                dotView.transform = .identity
                dotView.alpha = 1.0
            }, completion: nil)
        }
    }
    
    func animateIn() {
        transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        alpha = 0.0
        UIView.animate(withDuration: 0.5) {
            self.transform = .identity
            self.alpha = 1.0
        }
    }
    
    func animateOut(completion: @escaping () -> Void) {
        UIView.animate(withDuration: 0.01, animations: {
            self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.alpha = 0.0
        }) { _ in
            completion()
        }
    }
}
