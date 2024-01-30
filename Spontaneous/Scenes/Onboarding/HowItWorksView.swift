//
//  HowItWorks.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import SwiftUI

struct HowItWorksView: ViewControllable {
    var holder: NavigationStackHolder
    var navigationCoordinator: NavigationCoordinator

    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text("How it Works")
                    .font(.title)
                    .foregroundColor(.neoPrimaryTitle)
                    .multilineTextAlignment(.center)
                Text("choose a category, press randomize, get a randomized answer")
                    .font(.title2)
                    .foregroundColor(.neoTextOpposite)
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
                    .offset(x: UIScreen.main.bounds.width * 3/7, y: UIScreen.main.bounds.height * 1/6)
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Button("Got it!") {
                        navigationCoordinator.pushToNicknamePage()
                    }
                    .foregroundColor(.neoBackground)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.neoPrimaryButtonColorGreen)
                    )
                    Spacer()
                }
            }
        }
    }
}
