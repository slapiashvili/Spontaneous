//
//  ButtonStyles.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 11.02.24.
//

import UIKit

final class DoubleBorderButton: UIButton {
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        let outerBorderPath = UIBezierPath(roundedRect: rect.insetBy(dx: 5, dy: 5), cornerRadius: 14)
        UIColor.neoAlwaysGreen.setStroke()
        outerBorderPath.lineWidth = 1
        outerBorderPath.stroke()

        let innerBorderPath = UIBezierPath(roundedRect: rect.insetBy(dx: 13, dy: 13), cornerRadius: 9)
        UIColor.neoAlwaysGreen.setStroke()
        innerBorderPath.lineWidth = 1
        innerBorderPath.stroke()
    }
}

final class SingleBorderButton: UIButton {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let BorderPath = UIBezierPath(roundedRect: rect.insetBy(dx: 5, dy: 5), cornerRadius: 14)
        UIColor.neoAlwaysGreen.setStroke()
        BorderPath.lineWidth = 1
        BorderPath.stroke()
        
    }
}

