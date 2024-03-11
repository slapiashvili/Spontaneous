//
//  neoFont.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 14.02.24.
//

import SwiftUI
import UIKit

func neoDeviceFont() -> Font {
    let baseFontName = "Jura"
    
    if UIDevice.current.userInterfaceIdiom == .pad {
        return Font.custom(baseFontName, size: UIFont.preferredFont(forTextStyle: .title1).pointSize)
    } else {
        return Font.custom(baseFontName, size: UIFont.preferredFont(forTextStyle: .title3).pointSize)
    }
}


class NeoFonts {
    static func neoDeviceFont() -> UIFont {
        let baseFontName = "Jura"
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            return UIFont(name: baseFontName, size: UIFont.preferredFont(forTextStyle: .title1).pointSize) ?? UIFont.systemFont(ofSize: UIFont.labelFontSize)
        } else {
            return UIFont(name: baseFontName, size: UIFont.preferredFont(forTextStyle: .title3).pointSize) ?? UIFont.systemFont(ofSize: UIFont.labelFontSize)
        }
    }
}
