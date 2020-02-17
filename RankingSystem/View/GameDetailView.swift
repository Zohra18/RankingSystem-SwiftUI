//
//  GameDetailView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 17/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct GameDetailView: View {
    
    var ownedGamesDetail : Game
    
    var body: some View {
        
        VStack(spacing: 20) {
            
//            Image(ownedGamesDetail.gameImage)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 360, height: 360)
            
            Text("this is a test")
            
        }
//        .navigationBarTitle("\(ownedGamesDetail.gameName)", displayMode: .inline)
    }
}

struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        GameDetailView(ownedGamesDetail: Game(gameName: "Final Fantasy", gameImage: "ff", releaseYear: 1987, gameGenre: [GameGenre.RPG, GameGenre.Adventure, GameGenre.Fantasy], completionPercent: 95))
    }
}
