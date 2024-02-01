//
//  WhatToExpectView.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import SwiftUI

struct WhatToExpectView: View {
    
    // MARK: - Body
    
    var body: some View {
        whatToExpectContent
    }

    // MARK: - Private Properties

    private var whatToExpectContent: some View {
        VStack {
            Spacer()
            titleLabel
            descriptionLabel
            whatToExpectImage
            additionalTextLabel
            Spacer(minLength: 120)
        }
    }

    private var titleLabel: some View {
        Text("What to Expect")
            .font(Font.custom("Jura", size: 30, relativeTo: .title2))
            .bold()
            .foregroundColor(.neoPrimaryTitle)
            .multilineTextAlignment(.center)
    }

    private var descriptionLabel: some View {
        Text("We will help you make decisions about  different aspects of your life")
            .font(Font.custom("Jura", size: 20, relativeTo: .title3))
            .foregroundColor(.neoTextOpposite)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 15)
            .padding()
    }

    private var whatToExpectImage: some View {
        Image("WhatToExpect")
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width * 2/5, height: UIScreen.main.bounds.height * 2/5)
    }

    private var additionalTextLabel: some View {
        Text("so that you have time for more important things")
            .font(Font.custom("Jura", size: 20, relativeTo: .title3))
            .foregroundColor(.neoTextOpposite)
            .multilineTextAlignment(.center)
            .padding()
    }
}

