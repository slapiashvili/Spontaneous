//
//  OnboardingView.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import SwiftUI

struct OnboardingView: ViewControllable {
    var holder: NavigationStackHolder

    @State private var currentPage = 0
    // MARK: - Body

    var body: some View {
        onboardingContent
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }

    // MARK: - Private Properties

    private var onboardingContent: some View {
        ZStack {
            Color.neoBackground.edgesIgnoringSafeArea(.all)
            tabPages
        }
    }

    private var tabPages: some View {
        TabView(selection: $currentPage) {
            WelcomeView()
                .tag(0)

            WhatToExpectView()
                .tag(1)

            HowItWorksView(holder: NavigationStackHolder(), navigationCoordinator: NavigationCoordinator(holder: holder))
                .tag(2)
        }
    }
}

