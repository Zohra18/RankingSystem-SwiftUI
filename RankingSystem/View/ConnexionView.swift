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
            Capsule()
            .frame(width: 70, height: 5, alignment: .center)
            .padding(.top, 10)
            .foregroundColor(Color("mainGreen"))
            
            Text("Rank Up")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(20)
            
            // Already have an account
//            Form {
//                Section(header: Text("Already have an account?")) {
////                    Text("Already have an account?")
////                        .font(.headline)
////                        .frame(width: 385, height: 30, alignment: .center)
////                        .foregroundColor(Color("fadeGreen"))
//                    TextField("Username", text: $username)
//                        .font(.body)
//                    TextField("Email", text: $password)
//                        .font(.body)
//                }
//
//                // Signing in
//                Section {
//                    Text("Sign in")
//                        .font(.headline)
//                        .frame(width: 385, height: 30, alignment: .center)
////                        .foregroundColor(Color("fadeGreen"))
//                    TextField("Username", text: $username)
//                        .font(.body)
//                    TextField("Password", text: $password)
//                        .font(.body)
//                    TextField("Email", text: $email)
//                        .font(.body)
//                }
//            }
            
            VStack {
                Text("Already have an account?")
                
                TextField("Username", text: $username)
//                    .font(.body)
                    .padding(.bottom, 10)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(Color("mainGreen"))
                
                TextField("Password", text: $password)
//                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

                
            }.frame(width: 380, alignment: .center)
            
            Spacer()
            
            Button(action: {
                self.showAlert.toggle()
            }, label: {
                Text("Validate")
                .foregroundColor(Color("toxicGreen"))
            })
            
            
        }.frame(width: 414)
        
    }
}

struct ConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionView(showAlert: .constant(true))
    }
}
