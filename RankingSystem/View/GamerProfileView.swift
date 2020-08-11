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
        
        VStack(spacing: 10) {
            // Main part of the profile
            
            Text(gamer.gamerName)
                .font(.largeTitle)
                .fontWeight(.bold)
            //                .foregroundColor(Color("mainGreen"))
            
            Image(gamer.pictureName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350)
                .mask(Circle())
                .padding(10)
            
            Text("Rank: \(gamer.gamerRank)")
                .font(.title)
                .fontWeight(.medium)
                //                .foregroundColor(Color("mainGreen"))
                .padding(.bottom, -10)
            
            
            Text("\(gamer.gamerPoints) points")
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(Color("fadeGreen"))
                .padding(.bottom, 20)
            
            // Games owned section
            VStack {
                Text("Games Owned")
                    .font(.body)
                    .fontWeight(.medium)
                    .padding(.leading, -180)
                Capsule()
                    .frame(width: 150, height: 2)
                     .offset(x: -105, y: -10)
                    .foregroundColor(Color("mainGreen"))
            }
            
            
            //          Game list horizontal scroll
            GameListScrollView(gamer: gamer)
            
        }// end of the big VStack which is our profile
            //            .padding(30)
            .navigationBarTitle("Profile", displayMode: .inline)
       
    }// end of the body
}// end of the view

struct GamerProfileView_Previews: PreviewProvider {
    static var previews: some View {
        
        GamerProfileView(gamer: Gamer(gamerName: "Nostalgia", pictureName: "gameBOY", gamerRank: 1, gamerPoints: 927, gameList: gameListNostalgia))
    }
}
