//
//  GamerProfileView.swift
//  InstaUI Test
//
//  Created by Zohra Achour on 12/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct GamerProfileView: View {
    
    var gamer : Gamer
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text(gamer.gamerName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("mainGreen"))
            
            Image(gamer.pictureName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .mask(Circle())
                .padding(10)
            
            Text("Rank: \(gamer.gamerRank)")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color("mainGreen"))
            
            
            Text("\(gamer.gamerPoints) points")
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(Color("fadeGreen"))
            
            Text("Games Owned")
                .font(.body)
                .fontWeight(.medium)
            
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    
                    ForEach(gamer.gameList) { ownedGames in
                        VStack {
                            
                            Image(ownedGames.gameImage)
                                .resizable()
                                .frame(width: 100, height: 100)
                            
                            Text("\(ownedGames.gameName)")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color("mainGreen"))
                            
                            Text("\(ownedGames.completionPercent)%")
                                .font(.footnote)
                                .foregroundColor(Color("fadeGreen"))
                            
                        }
                        
                    }
                }
            }
            
        }
        .padding(30)
        .navigationBarTitle("Profile", displayMode: .inline)
        
        
        
    }
}

struct GamerProfileView_Previews: PreviewProvider {
    static var previews: some View {
        
        GamerProfileView(gamer: Gamer(gamerName: "Nostalgia", pictureName: "gameBOY", gamerRank: 1, gamerPoints: 927, gameList: gameListNostalgia))
    }
}
