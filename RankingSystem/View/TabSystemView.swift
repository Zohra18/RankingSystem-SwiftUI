//
//  TabSystemView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 16/04/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

// Set up for the TabView
struct TabSystemView: View {
    
    @State var user: Gamer
    
    var body: some View {
        
        TabView() {
            
            // firstTab
            NavigationView {
                List(rankingSystem) { gamer in
                    NavigationLink(destination:
                    GamerProfileView(gamer: gamer)) {
                        RankingSystemView(gamerList: gamer)
                    }
                }
                .navigationBarTitle("Leaderboard")
            }
            .tabItem {
                Image(systemName: "list.number")
                Text("Leaderboard")
            }
            
            
            // secondTab
            NavigationView {
                UserProfileView(user: self.user)
                    .navigationBarTitle("Profile", displayMode: .inline)
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
            
        }
        .accentColor(Color("toxicGreen"))
        
    }
}
