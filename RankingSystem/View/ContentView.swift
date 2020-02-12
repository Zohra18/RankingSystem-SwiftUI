//
//  ContentView.swift
//  InstaUI Test
//
//  Created by Zohra Achour on 03/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

// set up of the main view
struct ContentView: View {
    
    var rankingSystem: [Gamer] = [
        Gamer(gamerName: "x666EdgeLord666x", pictureName: "edgelord", gamerRank: 3, gamerPoints: 667),
        
        Gamer(gamerName: "gamerGrill", pictureName: "grill", gamerRank: 2, gamerPoints: 789),
        
        Gamer(gamerName: "Nostalgia", pictureName: "gameBOY", gamerRank: 1, gamerPoints: 927)
    ]
    
    
    var body: some View {
        
        NavigationView {
            List(rankingSystem) { gamer in
                NavigationLink(destination:
                GamerProfileView(gamer: gamer)) {
                    RankingSystemView(rankingSystem: gamer)
                }
            }
            .navigationBarTitle("Ranking")
            
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// view of each cell of the List
struct RankingSystemView: View {
    
    var rankingSystem: Gamer
    
    var body: some View {
        
        HStack(spacing: 20) {
            Image(rankingSystem.pictureName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .mask(Circle())
            
            VStack(alignment: .leading) {
                Text(rankingSystem.gamerName)
                    .font(.title)
                    .foregroundColor(Color("mainGreen"))
                
                Text("\(rankingSystem.gamerPoints) RP")
                    .font(.headline)
                    .foregroundColor(Color("fadeGreen"))
            }
        }
    }
    
    
}
