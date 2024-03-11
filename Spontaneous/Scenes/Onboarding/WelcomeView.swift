//
//  WelcomeView.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 23.01.24.
//

import SwiftUI

struct WelcomeView: View {
    
    // MARK: - Properties
    
    let images: [Image] = (1...10).map { String(format: "girl%01d", $0) }.map { Image($0) }
    @ObservedObject private var counter = Counter(interval: 0.15)

    // MARK: - Body
    
    var body: some View {
        welcomeContent
    }

    // MARK: - Private Properties

    private var welcomeContent: some View {
        VStack {
            Spacer()
            girlImage
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width * 2/5, height: UIScreen.main.bounds.height * 2/5)
                .transition(.scale)
                .onAppear {
                    animateWithSpring()
                }

            welcomeText

            Spacer()
        }
    }
    
    private var girlImage: Image {
        images[counter.value % images.count]
    }

    private var welcomeText: some View {
        Text("We make decision-making easier")
            .font(neoDeviceFont())
            .foregroundColor(.neoTextOpposite)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .frame(maxWidth: .infinity)
            .padding()
    }

    // MARK: - Private Methods
    
    private func animateWithSpring() {
        withAnimation(.interpolatingSpring(stiffness: 10, damping: 10)) {
            counter.value += 1
        }
    }
}

// MARK: - Counter for the animation

private class Counter: ObservableObject {
    private var timer: Timer?

    @Published var value: Int = 0

    init(interval: Double) {
        timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in self.value += 1 }
    }
}
