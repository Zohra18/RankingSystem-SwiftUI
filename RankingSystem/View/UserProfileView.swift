//
//  UserProfileView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 19/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct UserProfileView: View {
    
    @State var alreadyLoggedIn = false
    
    var user : Gamer
    
    @State private var showAlert = true
    
    var body: some View {
//        ScrollView {
            GamerProfileView(gamer: user)
                .navigationBarTitle("Profile", displayMode: .inline)
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Connexion Required"), message: Text("Welcome back, please log in"), dismissButton: .default(Text("Got it")))
        }
//            Text("test")
//        }
        
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(user: Gamer(gamerName: "MintTea", pictureName: "kb", gamerRank: 18, gamerPoints: 348, gameList: gameListGamerGrill))
    }
}

//struct ConnexionAlertView {
//
//    @State private var showAlert = false
//
//    var body: some View {
//
//
//    }
//}
