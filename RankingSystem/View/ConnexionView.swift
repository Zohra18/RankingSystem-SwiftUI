//
//  ConnexionView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 20/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

// This view is the connexion to the profile
struct ConnexionView: View {
    
    @Binding var showAlert: Bool
    
    @State var value: CGFloat = 0
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    
    var body: some View {
        
        VStack {
            Capsule()
                .frame(width: 70, height: 5, alignment: .center)
                .padding(.top, 10)
                .foregroundColor(Color("mainGreen"))
            
            HStack {
                
                Text("Rank Up")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(20)
                    .padding(.bottom, 20)
                    .padding(.leading, 25)
                
                Image(systemName: "arrowshape.turn.up.left.fill")
                    .rotationEffect(.degrees(90))
                    .foregroundColor(Color("toxicGreen"))
                    .offset(x: -33, y: -20)
            }
            
            
            
            
            // Account already existing
            VStack(spacing: 30) {
                VStack {
                    Text("Already have an account?")
                    Capsule()
                        .frame(width: 150, height: 2, alignment: .center)
                        .foregroundColor(Color("mainGreen"))
                }
                
                
                
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(Color("mainGreen"))
                
                TextField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.frame(width: 380, alignment: .center)
            
            Spacer()
            
            VStack(spacing: 30) {
                VStack {
                    Text("Sign in")
                    Capsule()
                        .frame(width: 150, height: 2, alignment: .center)
                        .foregroundColor(Color("mainGreen"))
                }
                
                
                
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(Color("mainGreen"))
                    .keyboardType(.numbersAndPunctuation)
                
                TextField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.frame(width: 380, alignment: .center)
            
            Spacer()
            
            Button(action: {
                self.showAlert.toggle()
            }, label: {
                Text("Validate")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .shadow(radius: 2)
                    .padding(10)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .background(Color("toxicGreen"))
                    .cornerRadius(10)
                
            })
            
            
            Spacer()
            
        }.frame(width: 414)
        
        //            Testing moving keyboard on textField click
        //            .offset(y: -self.value)
        //            .animation(.spring())
        //            .onAppear {
        //
        //                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) {
        //                    ( notification ) in
        //
        //                    let value = notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
        //                    let height = value.height
        //
        //                    self.value = height
        //                }
        //
        //                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) {
        //                    ( notification ) in
        //
        //                    self.value = 0
        //                }
        //
        //
        //
        //        }
        
        
        
    }
}

struct ConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionView(showAlert: .constant(true))
    }
}

