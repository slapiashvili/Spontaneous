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

    // MARK: - Body

    var body: some View {
        howItWorksContent
    }

    // MARK: - Private Properties

    private var howItWorksContent: some View {
        ZStack {
            VStack(alignment: .center) {
                Spacer()
                titleText
                descriptionText
                MainVStack
                Spacer(minLength: 100)
            }
        }
    }

    private var titleText: some View {
        Text("How it Works")
            .font(Font.custom("Jura", size: 30, relativeTo: .title2))
            .bold()
            .foregroundColor(.neoPrimaryTitle)
            .multilineTextAlignment(.center)
    }

    private var descriptionText: some View {
        Text("choose a category, press randomize, get a randomized answer")
            .font(Font.custom("Jura", size: 20, relativeTo: .title3))
            .foregroundColor(.neoTextOpposite)
            .multilineTextAlignment(.center)
            .padding()
    }

    private var decisionMakingAnimation: some View {
        DecisionMakingAnimationView()
            .frame(width: UIScreen.main.bounds.width * 2/3, height: UIScreen.main.bounds.height * 2/5)
    }



    private var MainVStack: some View {
        VStack(spacing: 20) {
            decisionMakingAnimation
            Button("Got it!") {
                navigationCoordinator.pushToNicknamePage()
            }
            .font(Font.custom("Jura", size: 16).bold())
            .foregroundColor(.neoTextOpposite)
            .padding()
            .frame(width: UIScreen.main.bounds.width * 2/3 - 5, height: 60)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.neoTextOpposite, lineWidth: 2)
            )
        }
    }

}
