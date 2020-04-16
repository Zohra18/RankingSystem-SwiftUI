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
                .navigationBarTitle("Leaderboard")
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
