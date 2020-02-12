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
            
//            HStack(spacing: 20) {
//
//
//
//            }
        }
        .padding(30)
        .navigationBarTitle("Profile", displayMode: .inline)
        
        
        
    }
}

struct GamerProfileView_Previews: PreviewProvider {
    static var previews: some View {
        
        GamerProfileView(gamer: Gamer(gamerName: "Nostalgia", pictureName: "gameBOY", gamerRank: 1, gamerPoints: 927))
    }
}
