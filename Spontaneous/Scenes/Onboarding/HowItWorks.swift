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
            
            Button("Got it!", action: navigationCoordinator.pushMainPageViewController)
                .onTapGesture { }
                .allowsHitTesting(true)
        }
        
    }
}

struct DecisionMakingAnimationView: View {
    @State private var selectedRectangleIndex = 0

    let rectangleTexts = ["Choice 1", "Choice 2", "Choice 3", "Choice 4"]
    let rectangleColors: [Color] = [.neoPrimaryButtonColorGreen, .neoPrimaryButtonColorGreen, .neoPrimaryButtonColorGreen, .neoPrimaryButtonColorGreen]

    var body: some View {
        VStack(spacing: 20) {
            ForEach(0..<4) { index in
                HStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(index == selectedRectangleIndex ? .red : rectangleColors[index])
                        .overlay(Text(rectangleTexts[index]))
                }
            }
        }
        .onAppear {
            animateDecisionMaking()
        }
    }


    func animateDecisionMaking() {
        selectedRectangleIndex = 0

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation(.easeInOut(duration: 0.5)) {
                selectedRectangleIndex = 2
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            withAnimation(.easeInOut(duration: 0.5)) {
                selectedRectangleIndex = 1
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(.easeInOut(duration: 0.5)) {
                selectedRectangleIndex = 2
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            withAnimation(.easeInOut(duration: 0.5)) {
                selectedRectangleIndex = 3
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            withAnimation(.easeInOut(duration: 0.5)) {
                selectedRectangleIndex = 1
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            withAnimation(.easeInOut(duration: 0.5)) {
                selectedRectangleIndex = 2
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
            withAnimation(.easeInOut(duration: 0.5)) {
                selectedRectangleIndex = 1
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
            withAnimation(.easeInOut(duration: 0.5)) {
                selectedRectangleIndex = 0
            }
        }

    }
}
