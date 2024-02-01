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
                titleText
                descriptionText
                decisionMakingAnimation
                Spacer()
            }
            additionalContent
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

    private var additionalContent: some View {
        HStack {
            additionalImage
            additionalButton
        }
    }

    private var additionalImage: some View {
        Image("lookingUpGirl")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width * 2/5, height: UIScreen.main.bounds.height * 2/5)
            .offset(x: UIScreen.main.bounds.width * 3/7, y: UIScreen.main.bounds.height * 1/6)
    }

    private var additionalButton: some View {
        VStack {
            Spacer()
            Spacer()
            Spacer()
            Button("Got it!") {
                navigationCoordinator.pushToNicknamePage()
            }
            .font(Font.custom("Jura", size: 16))
            .foregroundColor(.neoBackground)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.neoTextOpposite)
            )
            Spacer()
        }
    }
}
