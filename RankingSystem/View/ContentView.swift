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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(user: Gamer(gamerName: "Nostalgia", pictureName: "gameBOY", gamerRank: 1, gamerPoints: 927, gameList: gameListNostalgia))
            .environment(\.colorScheme, .dark)
    }
}
