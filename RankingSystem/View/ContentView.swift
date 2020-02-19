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
    
    var user: Gamer
    
    @State var selectedTab = 0
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            // firstTab
            NavigationView {
                List(rankingSystem) { gamer in
                    NavigationLink(destination:
                    GamerProfileView(gamer: gamer)) {
                        RankingSystemView(gamerList: gamer)
                    }
                }.navigationBarTitle("Ranking")
            }
            .tabItem {
                Image(systemName: "phone.fill")
                Text("Ranking")
            }.tag(0)
            
            // secondTab
            UserProfileView(user: user)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Profile")
            }.tag(1)
        }
        
        //        NavigationView {
        //            List(rankingSystem) { gamer in
        //                NavigationLink(destination:
        //                GamerProfileView(gamer: gamer)) {
        //                    RankingSystemView(gamerList: gamer)
        //                }
        //            }
        //            .navigationBarTitle("Ranking")
        //
        //        }
        
    }
    
}


// view of each cell of the List
struct RankingSystemView: View {
    
    var gamerList: Gamer
    
    var body: some View {
        
        HStack(spacing: 20) {
            Image(gamerList.pictureName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .mask(Circle())
            
            VStack(alignment: .leading) {
                Text(gamerList.gamerName)
                    .font(.title)
                //                    .foregroundColor(Color("mainGreen"))
                
                Text("\(gamerList.gamerPoints) RP")
                    .font(.headline)
                    .foregroundColor(Color("fadeGreen"))
            }
        }
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(user: Gamer(gamerName: "Nostalgia", pictureName: "gameBOY", gamerRank: 1, gamerPoints: 927, gameList: gameListNostalgia))
    }
}
