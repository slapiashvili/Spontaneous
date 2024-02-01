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
            Spacer()
            Text("What to Expect")
                .font(Font.custom("Jura", size: 30, relativeTo: .title2))
                .bold()
                .foregroundColor(.neoPrimaryTitle)
                .multilineTextAlignment(.center)
                
            Text("We will help you make decisions about  different aspects of your life")
                .font(Font.custom("Jura", size: 20, relativeTo: .title3))
                .foregroundColor(.neoTextOpposite)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 15)
                .padding()
            
            Image("WhatToExpect")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width * 2/5, height: UIScreen.main.bounds.height * 2/5)
            Spacer()
            Text("so that you have time for more important things")
                .font(Font.custom("Jura", size: 20, relativeTo: .title3))
                .foregroundColor(.neoTextOpposite)
                .multilineTextAlignment(.center)
                .padding()
            Spacer(minLength: 120)
        }
    }
}
