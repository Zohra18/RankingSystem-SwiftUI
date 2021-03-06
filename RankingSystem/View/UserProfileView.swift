//
//  UserProfileView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 19/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI


// This is the profile of the Logged in user
struct UserProfileView: View {
    
//    @State private var showAlert: Bool = true
    @EnvironmentObject var userSettings: UserSettings
    
    var user : Gamer
    
    var body: some View {
        ScrollView {
            GamerProfileView(gamer: user)
                .navigationBarTitle("Profile", displayMode: .inline)
                .sheet(isPresented: $userSettings.notLoggedIn) {
                    ConnexionView(showAlert: self.$userSettings.notLoggedIn)
                    
            }
        }
        
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(user: Gamer(gamerName: "MintTea", pictureName: "kb", gamerRank: 18, gamerPoints: 0, gameList: userGameList))
    }
}
