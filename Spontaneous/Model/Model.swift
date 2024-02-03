//
//  GeneralCategory.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 29.01.24.
//

import UIKit

struct GeneralCategory {
    var categoryName: String
    var categoryBeforeName: String
    var description: String
    var filters: [Filter]
    var symbolName: String?
}

struct Filter {
    var filterName: String
    var filterContents: [FilterContent]
}

struct FilterContent {
    let primaryName: String
    let fullName: String
    let afterName: String
    let description: String
    let image: UIImage
}
