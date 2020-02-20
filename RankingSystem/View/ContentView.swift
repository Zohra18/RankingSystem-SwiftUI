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
    
// Need a State in order to know which tabItem is selected
    
    @State var selectedTab = 0
    
    var body: some View {
        TabSystemView(user: user, selectedTab: selectedTab)
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
                
                Text("\(gamerList.gamerPoints) RP")
                    .font(.headline)
                    .foregroundColor(Color("fadeGreen"))
            }
        }
    }
}

// Set up for the TabView
struct TabSystemView: View {
    
    var user: Gamer
    
// Need a State in order to know which tabItem is selected
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
                }
                .navigationBarTitle("Ranking")
                .padding(.top, 10)
            }
            .tabItem {
                Image(systemName: "list.number")
                Text("Leaderboard")
            }
            .tag(0)
            
            // secondTab
            NavigationView {
                UserProfileView(user: self.user)
                    .navigationBarTitle("Profile", displayMode: .inline)
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
            .tag(1)
        }
        .accentColor(Color("toxicGreen"))
        .edgesIgnoringSafeArea(.top)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(user: Gamer(gamerName: "Nostalgia", pictureName: "gameBOY", gamerRank: 1, gamerPoints: 927, gameList: gameListNostalgia))
            .environment(\.colorScheme, .dark)
    }
}
