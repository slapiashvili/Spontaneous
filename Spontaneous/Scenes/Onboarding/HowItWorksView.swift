//
//  HowItWorks.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import SwiftUI

struct HowItWorksView: View {
    
    var navigationCoordinator: NavigationCoordinator
    var body: some View {
        VStack {
            ZStack {
                VStack(alignment: .center) {
                    Text("How it Works")
                        .font(.title)
                        .foregroundColor(.neoTextColorGreen)
                        .multilineTextAlignment(.center)
                    Text("choose a category, press randomize, get a randomized answer")
                        .font(.title2)
                        .foregroundColor(.neoTextColorBrownCream)
                        .multilineTextAlignment(.center)
                        .padding()
                    DecisionMakingAnimationView()
                        .frame(width: UIScreen.main.bounds.width * 2/3, height: UIScreen.main.bounds.height * 2/5)
                    Spacer()
                }
                HStack {
                    Image("lookingUpGirl")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width * 2/5, height: UIScreen.main.bounds.height * 2/5)
                        .offset(x: UIScreen.main.bounds.width * 1/3, y: UIScreen.main.bounds.height * 1/6)
                }
            }
            
        }
        
    }
}

