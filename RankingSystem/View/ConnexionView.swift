//
//  ConnexionView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 20/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct ConnexionView: View {
    
    @Binding var showAlert: Bool
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    
    var body: some View {
        
        VStack {
            Text("Welcome")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(20)
            
// Already have an account
            Form {
                Section {
                    Text("Already have an account?")
                        .padding(.leading, 25)
                    TextField("Username", text: $username)
                        .font(.headline)
                    TextField("Email", text: $password)
                        .font(.headline)
                }
                .padding(10)
                .font(.title)
                
// Signing in
                Section {
                    Text("Sign in")
                        .padding(.leading, 135)
                    TextField("Username", text: $username)
                        .font(.headline)
                    TextField("Password", text: $password)
                        .font(.headline)
                    TextField("Email", text: $email)
                        .font(.headline)
                }
                .padding(10)
                .font(.title)
            }
            
//            Button(action: <#T##() -> Void#>, label: <#T##() -> PrimitiveButtonStyleConfiguration.Label#>)
            Spacer()
        }
        
    }
}

struct ConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionView(showAlert: .constant(true))
    }
}
