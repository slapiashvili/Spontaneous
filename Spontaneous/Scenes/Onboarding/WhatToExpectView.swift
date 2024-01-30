//
//  WhatToExpectView.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import SwiftUI

struct WhatToExpectView: View {
    var body: some View {
        VStack {
            Text("What to Expect")
                .font(.title)
                .foregroundColor(.neoPrimaryTitle)
                .multilineTextAlignment(.center)

            Text("We will help you make decisions about different aspects of your life")
                .font(.title2)
                .foregroundColor(.neoTextOpposite)
                .multilineTextAlignment(.center)
                .padding()
            
            Image("WhatToExpect")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width * 2/5, height: UIScreen.main.bounds.height * 2/5)
            
            Text("so that you have time for more important things")
                .font(.title3)
                .foregroundColor(.neoTextOpposite)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}
