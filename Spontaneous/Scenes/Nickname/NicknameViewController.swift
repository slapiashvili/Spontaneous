//
//  NicknameViewController.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 24.01.24.
//

import SwiftUI


struct NicknameViewController: ViewControllable {
    // MARK: - Properties

    var navigationCoordinator: NavigationCoordinator
    var holder: NavigationStackHolder

    @StateObject private var viewModel = NicknameViewModel.shared
    @State private var showAlert = false

    private let generalWidthIndicator: CGFloat = UIScreen.main.bounds.size.width * 3/4
    private let generalHeightIndicator: CGFloat = UIScreen.main.bounds.size.height * 1/4

    // MARK: - Body

    var body: some View {
        ZStack {
            Color.neoBackground.edgesIgnoringSafeArea(.all)
            VStack {
                topZStack()
                Text("or")
                    .padding()
                bottomZStack()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Error"),
                message: Text("Nickname cannot be empty."),
                dismissButton: .default(Text("OK"))
            )
        }
    }

    // MARK: - Private Methods

    private func topZStack() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: generalWidthIndicator, height: generalHeightIndicator)
                .background(Color.neoBackground)

            VStack(alignment: .center, spacing: 20) {
                Text("Please enter a nickname")
                    .foregroundColor(.neoBackground)
                    .frame(width: generalWidthIndicator - 40)

                TextField("Start typing", text: $viewModel.userNickname)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding()
                    .frame(width: generalWidthIndicator - 20, height: generalHeightIndicator * 1/4)
                    .border(Color.neoBackground, width: 2)
                    .foregroundColor(.neoBackground)
                    .accentColor(.white)
                    .cornerRadius(8)

                Button("Confirm") {
                    confirmNickname()
                }
                .frame(width: generalWidthIndicator - 20, height: generalHeightIndicator * 1/4)
                .buttonStyle(PlainButtonStyle())
                .background(Color.neoBackground)
                .foregroundColor(Color.neoTextOpposite)
                .cornerRadius(4)
            }
        }
    }

    private func bottomZStack() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: generalWidthIndicator, height: generalHeightIndicator)
                .background(.neoBackground)

            VStack (alignment: .center, spacing: 40) {
                Text("Let us randomize a nickname for you")
                    .foregroundColor(.neoBackground)
                    .frame(width: generalWidthIndicator - 40)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)

                Button("Randomize") {
                    viewModel.randomizeNickname()
                }
                .frame(width: generalWidthIndicator - 20, height: generalHeightIndicator * 1/4)
                .buttonStyle(PlainButtonStyle())
                .background(Color.neoBackground)
                .foregroundColor(Color.neoTextOpposite)
                .cornerRadius(4)
            }
        }
    }

    private func confirmNickname() {
        if viewModel.userNickname.isEmpty {
            showAlert = true
        } else {
            navigationCoordinator.pushToMainPage()
        }
    }
}
