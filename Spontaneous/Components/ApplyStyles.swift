//
//  ButtonStyle.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import SwiftUI
import UIKit

private let generalWidthIndicator: CGFloat = UIScreen.main.bounds.size.width * 3/4
private let generalHeightIndicator: CGFloat = UIScreen.main.bounds.size.height * 1/4

extension View {
    func applyNeoTextFieldStyle() -> some View {
        self
            .textFieldStyle(PlainTextFieldStyle())
            .padding()
            .font(.custom("Jura", size: 18))
            .bold()
            .frame(width: UIScreen.main.bounds.size.width * 2/3, height: UIScreen.main.bounds.size.height * 1/16 )
            .background(Color.neoTextField)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.neoBackground, lineWidth: 3)
            )
            .foregroundColor(.neoAlwaysGreen)
            .bold()
            .accentColor(.white)
            .cornerRadius(15)
            .autocorrectionDisabled()
            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
    }

    func applyNeoRegularButtonStyle() -> some View {
        self
            .frame(width: UIScreen.main.bounds.size.width * 2/3, height: UIScreen.main.bounds.size.height * 1/16 )
            .buttonStyle(PlainButtonStyle())
            .font(.custom("Jura", size: 20))
            .bold()
            .background(Color.neoBackground)
            .foregroundColor(Color.neoTextOpposite)
            .cornerRadius(15)
    }

    func applyNeoRandomizeButtonStyle() -> some View {
        self
            .frame(width: UIScreen.main.bounds.size.width * 2/3, height: UIScreen.main.bounds.size.height * 1/16 )
            .buttonStyle(PlainButtonStyle())
            .font(.custom("Jura", size: 20))
            .bold()
            .background(Color.neoBackground)
            .foregroundColor(Color.neoTextOpposite)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.neoAlwaysGreen, lineWidth: 10)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.neoBackground, lineWidth: 7)
            )
    }
    
    func applyNeoRegularTextStyle() -> some View {
           self
            .frame(width: generalWidthIndicator - 40)
            .foregroundColor(.neoBackground)
            .font(.custom("Jura", size: 20))
            .bold()
            .multilineTextAlignment(.center)
        
    }
}


class DoubleBorderButton: UIButton {
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


class SingleBorderButton: UIButton {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let BorderPath = UIBezierPath(roundedRect: rect.insetBy(dx: 5, dy: 5), cornerRadius: 14)
        UIColor.neoAlwaysGreen.setStroke()
        BorderPath.lineWidth = 1
        BorderPath.stroke()
        
    }
}
