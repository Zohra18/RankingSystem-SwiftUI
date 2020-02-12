//
//  Game.swift
//  RankingSystem
//
//  Created by Zohra Achour on 12/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import Foundation

struct Game: Identifiable {
    var id = UUID()
    var gameName: String
    var gameImage: String
    var releaseYear: Int
    var gameGenre: [GameGenre]
    var completionPercent: Int
}

enum GameGenre {
    case RPG, Action, FPS, Simulation, Horror, Survival, Arcade, Plateform, ActionRPG, Roguelike, PostApocaliptic, Adventure, Fantasy, Dark, StoryRich
}
