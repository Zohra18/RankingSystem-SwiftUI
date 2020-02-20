//
//  UserProfileView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 19/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct UserProfileView: View {
    
    var user : Gamer
    
    var body: some View {
        ScrollView {
            GamerProfileView(gamer: user)
                .navigationBarTitle("Profile")
        }
        
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(user: Gamer(gamerName: "gamerGrill", pictureName: "grill", gamerRank: 2, gamerPoints: 789, gameList: gameListGamerGrill))
    }
}
