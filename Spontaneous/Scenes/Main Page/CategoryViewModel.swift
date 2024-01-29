//
//  CategoryViewModel.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 29.01.24.
//

import UIKit

struct CategoryViewModel {
    var categories: [GeneralCategory] = []

    init() {
        categories = [
            watchCategory,
            eatCategory,
            activityCategory,
            listenCategory,
            colorPaletteCategory,
            giftCategory,
            readCategory,
            cookCategory
        ]
    }
    
    let watchCategory = GeneralCategory(
        categoryName: "watch",
        categoryBeforeName: "randomize what to",
        description: "Let us help you decide what to watch, be it movies, anime or TV-shows. We've got it all! Try it for yourself.",
        filters: ["movies", "TV-shows", "anime", "IdontCare"]
    )

    let eatCategory = GeneralCategory(
        categoryName: "eat",
        categoryBeforeName: "randomize what to",
        description: "We will help you make a decision about your next meal. Can't decide? Try our our randomizer!",
        filters: ["Gluten Free", "Vegan", "Vegetarian", "No-Dairy", "No restrictions"]
    )

    let activityCategory = GeneralCategory(
        categoryName: "activity",
        categoryBeforeName: "randomize an",
        description: "Are you bored? Can't decide what activity to dive into next? We will help! Try out our randomizer.",
        filters: ["for myself", "family", "for a group of friends", "with a partner", "with a friend", "idontcare"]
    )

    let listenCategory = GeneralCategory(
        categoryName: "listen to",
        categoryBeforeName: "randomize what to",
        description: "Are you bored of your usual playlists? Let us bring a little sparkle into your musical taste. Try it out!",
        filters: ["rock music", "pop music", "classical music", "jazz music", "I don't care"]
    )

    let colorPaletteCategory = GeneralCategory(
        categoryName: "Color Palette",
        categoryBeforeName: "randomize a",
        description: "Are you having trouble deciding what colors to use in your next presentation? Or perhaps in your next project? Let us help you out.",
        filters: ["monochrome", "warm tones", "cold tones", "I dont care"]
    )

    let giftCategory = GeneralCategory(
        categoryName: "gift",
        categoryBeforeName: "randomize what to",
        description: "Can't decide what to gift your close ones? Let us help you out!",
        filters: ["female", "male", "Idontcare"]
    )

    let readCategory = GeneralCategory(
        categoryName: "read",
        categoryBeforeName: "randomize what to",
        description: "Having trouble deciding what to read next? Let us help you out! Randomize it!",
        filters: ["books", "manga", "scientific articles", "idontcare"]
    )

    let cookCategory = GeneralCategory(
        categoryName: "cook",
        categoryBeforeName: "randomize what to",
        description: "Can't decide which recipe to follow next? Let us help you plan your next meal with thousands of randomized recipes.",
        filters: ["Gluten Free", "Vegan", "Vegetarian", "No-Dairy", "No restrictions"]
    )
}
