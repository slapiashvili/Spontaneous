//
//  DecisionMakingAnimationView.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import SwiftUI

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
                        .scaleEffect(index == selectedRectangleIndex ? 1.1 : 1.0)
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
            withAnimation(.spring(duration: 0.5)) {
                selectedRectangleIndex = 2
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            withAnimation(.spring(duration: 0.5)) {
                selectedRectangleIndex = 1
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(.spring(duration: 0.5)) {
                selectedRectangleIndex = 2
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            withAnimation(.spring(duration: 0.5)) {
                selectedRectangleIndex = 3
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            withAnimation(.spring(duration: 0.5)) {
                selectedRectangleIndex = 1
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            withAnimation(.spring(duration: 0.5)) {
                selectedRectangleIndex = 2
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
            withAnimation(.spring(duration: 0.5)) {
                selectedRectangleIndex = 1
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
            withAnimation(.spring(duration: 0.50)) {
                selectedRectangleIndex = 0
            }
        }
    }
}
