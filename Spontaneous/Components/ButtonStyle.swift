//
//  ButtonStyle.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import UIKit


struct Colors {
static let primary: UIColor = #colorLiteral(red: 0.3215686275, green: 0.7176470588, blue: 0.5333333333, alpha: 1) // #52B788
static let white: UIColor = .white
static let lightGray: UIColor = #colorLiteral(red: 0.9254901961, green: 0.9254901961, blue: 0.9254901961, alpha: 1) // #ECECEC
static let darkGray: UIColor = #colorLiteral(red: 0.6352941176, green: 0.6352941176, blue: 0.6352941176, alpha: 1) // #A2A2A2
}


enum ButtonStyle {
case primary
case secondary
case outlined
var backgroundColor: UIColor {
switch self {
case .primary:
return Colors.primary
case .secondary, .outlined:
return .clear
        }
    }
var disabledBackgroundColor: UIColor {
return Colors.lightGray
    }
var borderColor: CGColor {
switch self {
case .primary, .secondary:
return Colors.primary.cgColor
case .outlined:
return Colors.primary.cgColor
        }
    }
var textColor: UIColor {
switch self {
case .primary:
return .white
case .secondary:
return Colors.primary
case .outlined:
return Colors.primary
        }
    }
var disabledTextColor: UIColor {
return Colors.darkGray
    }
var hasBorder: Bool {
self == .outlined
    }
}
class StyledButton: UIButton {
var style: ButtonStyle = .primary {
didSet {
applyStyle()
        }
    }
override var isEnabled: Bool {
didSet {
setEnabled()
        }
    }
init(_ style: ButtonStyle = .primary) {
super.init(frame: .zero)
self.style = style
setup()
    }
required init?(coder: NSCoder) {
super.init(coder: coder)
setup()
    }
func setup() {
        titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        layer.cornerRadius = 8
applyStyle()
    }
    
func applyStyle() {
setTitleColor(style.textColor, for: .normal)
setTitleColor(style.disabledTextColor, for: .disabled)
        backgroundColor = isEnabled ? style.backgroundColor : style.disabledBackgroundColor
        layer.borderWidth = isEnabled && style.hasBorder ? 1.2 : 0
        layer.borderColor = style.borderColor
    }
    
    
func setEnabled() {
        layer.borderWidth = isEnabled && style.hasBorder ? 1.2 : 0
        backgroundColor = isEnabled ? style.backgroundColor : style.disabledBackgroundColor
    }
}
