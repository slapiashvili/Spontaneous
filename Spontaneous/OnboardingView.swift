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

    var body: some View {
        ZStack {
            Color.neoBackground.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            TabView(selection: $currentPage) {
                WelcomeView()
                    .tag(0)
                WhatToExpectView()
                    .tag(1)
                HowItWorksView()
                    .tag(2)
            }
        }

        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct WelcomeView: View {
    var body: some View {
        Text("How It Works Page")
    }
}


struct WhatToExpectView: View {
    var body: some View {
        Text("What To Expect Page")
    }
}

struct HowItWorksView: View {
    var body: some View {
        Text("How It Works Page")
    }
}
