//
//  GamesDataBase.swift
//  RankingSystem
//
//  Created by Zohra Achour on 12/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import Foundation

var gameListNostalgia: [Game] = [
    Game(gameName: "Super Mario Bros", gameImage: "mario", releaseYear: 1985, gameGenre: [GameGenre.Plateform], completionPercent: 100),
    Game(gameName: "Half Life", gameImage: "hl", releaseYear: 1998, gameGenre: [GameGenre.FPS, GameGenre.Survival, GameGenre.Horror], completionPercent: 100),
    Game(gameName: "Pokémon Blue", gameImage: "pokemon", releaseYear: 1996, gameGenre: [GameGenre.RPG], completionPercent: 98),
    Game(gameName: "Final Fantasy", gameImage: "ff", releaseYear: 1987, gameGenre: [GameGenre.RPG, GameGenre.Adventure, GameGenre.Fantasy], completionPercent: 95),
    Game(gameName: "Spyro The Dragon", gameImage: "spyro", releaseYear: 1998, gameGenre: [GameGenre.Plateform, GameGenre.Adventure], completionPercent: 89)
    ]

var gameListEdgeLord: [Game] = [
    Game(gameName: "Dishonored", gameImage: "dh", releaseYear: 2009, gameGenre: [GameGenre.ActionRPG, GameGenre.Adventure, GameGenre.StoryRich], completionPercent: 92),
    Game(gameName: "Dead Cells", gameImage: "dc", releaseYear: 2018, gameGenre: [GameGenre.Roguelike], completionPercent: 75),
    Game(gameName: "Dark Soul", gameImage: "ds", releaseYear: 2011, gameGenre: [GameGenre.Adventure, GameGenre.Dark, GameGenre.Fantasy, GameGenre.Action], completionPercent: 100)
    ]

var gameListGamerGrill: [Game] = [
    Game(gameName: "Resident Evil 2", gameImage: "re2", releaseYear: 2019, gameGenre: [GameGenre.Survival, GameGenre.Horror], completionPercent: 97),
    Game(gameName: "Fallout: New Vegas", gameImage: "fnv", releaseYear: 2010, gameGenre: [GameGenre.ActionRPG, GameGenre.PostApocaliptic, GameGenre.Adventure, GameGenre.StoryRich], completionPercent: 100),
    Game(gameName: "Okami", gameImage: "okami", releaseYear: 2006, gameGenre: [GameGenre.Adventure, GameGenre.StoryRich], completionPercent: 72),
    Game(gameName: "Life is Strange", gameImage: "lis", releaseYear: 2015, gameGenre: [GameGenre.Adventure, GameGenre.StoryRich], completionPercent: 89)
    ]

var userGameList: [Game] = []

