//
//  GameDetailView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 17/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI


// This view is the detailView of the games owned by the user/gamers
struct GameDetailView: View {
    
    var ownedGamesDetail : Game
    
    var body: some View {
        
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [ .black, Color("fadeGreen")]), startPoint: .top, endPoint: .bottom)
//                .edgesIgnoringSafeArea(.bottom)
            
            VStack(spacing: 20) {
                Image(ownedGamesDetail.gameImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 360, height: 360)
                    
                    .padding(20)
                
                    
                Spacer()
            }
            .navigationBarTitle("\(ownedGamesDetail.gameName)", displayMode: .inline)
        }
        
        
        
    }
}

struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        GameDetailView(ownedGamesDetail: Game(gameName: "Final Fantasy", gameImage: "ff", releaseYear: 1987, gameGenre: [GameGenre.RPG, GameGenre.Adventure, GameGenre.Fantasy], completionPercent: 95))
    }
}
