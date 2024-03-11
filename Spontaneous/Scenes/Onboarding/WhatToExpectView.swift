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
            Spacer(minLength: 100)
        }
    }

    private var titleLabel: some View {
        Text("What to Expect")
            .font(Font.custom("Jura", size: 30, relativeTo: .title2))
            .bold()
            .foregroundColor(.neoPrimaryTitle)
            .multilineTextAlignment(.center)
            .edgesIgnoringSafeArea(.top) 
    }


    private var descriptionLabel: some View {
        Text("We will help you make decisions about different aspects of your life")
            .font(neoDeviceFont())
            .foregroundColor(.neoTextOpposite)
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
            .padding(.horizontal, 40)
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
            .font(neoDeviceFont())
            .foregroundColor(.neoTextOpposite)
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
            .padding()
    }
}

