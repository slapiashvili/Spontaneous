//
//  NicknameViewModel.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 31.01.24.
//

import SwiftUI

class NicknameViewModel: ObservableObject {
    
    static let shared = NicknameViewModel()
    @Published var userNickname: String = ""

    private let defaultNicknames = [
        "Hunter", "Scout", "Teacup", "Maverick", "Shadow", "Breeze", "Blaze",
        "Nova", "Whisper", "Pebble", "Thunder", "Sapphire", "Ghost", "Luna",
        "Crimson", "Panda", "Echo", "Raven", "Frost", "Phoenix", "Jazz",
        "Rocket", "Cascade", "Titan", "Spartan", "Zephyr", "Bolt", "Pixel",
        "Blizzard", "Starlight"
    ]
    
    private init() {}

    func randomizeNickname() {
        if let randomNickname = defaultNicknames.randomElement() {
            userNickname = randomNickname
        }
    }
}

