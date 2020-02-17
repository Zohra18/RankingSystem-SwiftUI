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
// Main part of the profile
            
            Text(gamer.gamerName)
                .font(.largeTitle)
                .fontWeight(.bold)
            //                .foregroundColor(Color("mainGreen"))
            
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
                .padding(.bottom, -15)
            
            
            Text("\(gamer.gamerPoints) points")
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(Color("fadeGreen"))
            
// Games owned section
            Text("Games Owned")
                .font(.body)
                .fontWeight(.medium)
                .padding(.leading, -180)
            
// List of games the user ownes and plays
            ScrollView(.horizontal) {
                
                HStack(spacing: 20) {
                    
// Have to go inside of the gamer.gameList in order to get the info from our array of games
                    ForEach(gamer.gameList) { ownedGames in
                        VStack {
                            
                            Image(ownedGames.gameImage)
                                .resizable()
                                .frame(width: 120, height: 120)
//                                .mask(Circle())
                            
                            Text("\(ownedGames.gameName)")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color("mainGreen"))
                            
                            Text("\(ownedGames.completionPercent)%")
                                .font(.footnote)
                                .foregroundColor(Color("fadeGreen"))
                                
                            
                        }
// Setting the frame to the same size for each games
                        .frame(width: 160, height: 160, alignment: .center)
                        
                    } // end of the ForEach
                }// end of HStack
            }// end of scrollView
            
        }// end of the big VStack which is our profile
        .padding(30)
        .navigationBarTitle("Profile", displayMode: .inline)
        
        
        
    }// end of the body
}// end of the view

struct GamerProfileView_Previews: PreviewProvider {
    static var previews: some View {
        
        GamerProfileView(gamer: Gamer(gamerName: "Nostalgia", pictureName: "gameBOY", gamerRank: 1, gamerPoints: 927, gameList: gameListNostalgia))
    }
}
