//
//  GameListScrollView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 16/04/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

// This is the horizontal list of games inside the gamer profile
// Set aside the horizontal scrollable game list
struct GameListScrollView: View {
    
    var gamer: Gamer
    
    var body: some View {
//         List of games the user ownes and plays
        ScrollView(.horizontal, showsIndicators: false) {
            // Horizontal List (old CollectionView)
            HStack(spacing: 0) {
                
                // Have to go inside of the gamer.gameList in order to get the info from our array of games
                ForEach(gamer.gameList) { ownedGames in
               
                NavigationLink(destination: GameDetailView(ownedGamesDetail: ownedGames)) {
                    
                        VStack {
                            Image(ownedGames.gameImage)
                                .resizable()
                                .frame(width: 120, height: 120)

                            Text("\(ownedGames.gameName)")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(.primary)

                            Text("\(ownedGames.completionPercent)%")
                                .font(.footnote)
                                .foregroundColor(Color("fadeGreen"))
                        }
                            // Setting the frame to the same size for each games
                            .frame(width: 160, height: 160, alignment: .center)
                    }// end of NavLink
                    .buttonStyle(PlainButtonStyle())
                } // end of the ForEach
            }// end of HStack
        }// end of ScrollView
            .padding(.leading, 10)
    }
}
