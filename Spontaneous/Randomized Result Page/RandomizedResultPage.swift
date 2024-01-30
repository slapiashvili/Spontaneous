//
//  RandomizedResultPage.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 30.01.24.
//

import UIKit


class RandomizedResultPage: UIViewController {
    var randomizedContent: FilterContent?
    
    init(randomizedContent: FilterContent) {
        super.init(nibName: nil, bundle: nil)
        self.randomizedContent = randomizedContent
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .neoBackground
    }
}
