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
    
    @EnvironmentObject var isLoggedIn: UserSettings
    
//    var user: Gamer
    var user = Gamer(gamerName: "", pictureName: "", gamerRank: 0, gamerPoints: 0, gameList: userGameList)
    
    var body: some View {
        TabSystemView(user: user)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
