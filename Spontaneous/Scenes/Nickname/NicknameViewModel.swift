//
//  NicknameViewModel.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 31.01.24.
//

import SwiftUI

final class NicknameViewModel: ObservableObject {
    
    static let shared = NicknameViewModel()
    @Published var userNickname: String {
        didSet {
            saveNickname()
        }
    }

    private let defaultNicknames = [
        "Hunter", "Scout", "Teacup", "Maverick", "Shadow", "Breeze", "Blaze",
        "Nova", "Whisper", "Pebble", "Thunder", "Sapphire", "Ghost", "Luna",
        "Crimson", "Panda", "Echo", "Raven", "Frost", "Phoenix", "Jazz",
        "Rocket", "Cascade", "Titan", "Spartan", "Zephyr", "Bolt", "Pixel",
        "Blizzard", "Starlight"
    ]
    
    private let nicknameKey = "selectedNickname"

    private init() {
        if let savedNickname = UserDefaults.standard.string(forKey: nicknameKey) {
            userNickname = savedNickname
        } else {
            userNickname = ""
        }
    }

    func randomizeNickname() {
        if let randomNickname = defaultNicknames.randomElement() {
            userNickname = randomNickname
        }
    }

    func saveNickname() {
        UserDefaults.standard.set(userNickname, forKey: nicknameKey)
    }
}

