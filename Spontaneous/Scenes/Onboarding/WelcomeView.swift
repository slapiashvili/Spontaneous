//
//  WelcomeView.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import SwiftUI

struct WelcomeView: View {

    let images: [Image] = (1...10).map { String(format: "girl%01d", $0) }.map { Image($0) }

    @ObservedObject private var counter = Counter(interval: 0.15)

    var body: some View {
        VStack {
            images[counter.value % images.count]
                .transition(.scale)
                .onAppear {
                    animateWithSpring()
                }

            Text("We make decision-making easier")
                .font(.title2)
                .foregroundColor(.neoTextColorBrownCream)
                .multilineTextAlignment(.center)
                .padding()
        }
    }

    private func animateWithSpring() {
        withAnimation(.interpolatingSpring(stiffness: 10, damping: 10)) {
            counter.value += 1
        }
    }
}

private class Counter: ObservableObject {
    private var timer: Timer?

    @Published var value: Int = 0

    init(interval: Double) {
        timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in self.value += 1 }
    }
}
