//
//  Gamer.swift
//  RankingSystem
//
//  Created by Zohra Achour on 12/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import Foundation

struct Gamer: Identifiable {
    var id = UUID()
    var gamerName: String
    var pictureName: String
    var gamerRank: Int
    var gamerPoints: Int
    var gameList: [Game]
}


