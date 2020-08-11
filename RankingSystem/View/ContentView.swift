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
    
    @EnvironmentObject var userSettings: UserSettings
    
    @State var switchView: Bool = false
    
    
    
    var user = Gamer(gamerName: "", pictureName: "kb", gamerRank: 0, gamerPoints: 0, gameList: userGameList)
    
    @State private var step = 1
    
     var body: some View {
           ZStack {
            TabSystemView()
                .zIndex(switchView ? 10 : 0)
            Color(switchView ? .clear : .white)
//                .zIndex(switchView ? 0 : 1)
                   .edgesIgnoringSafeArea(.all)
               VStack(spacing: 30) {
                   Text("Welcome to")
                       .font(.largeTitle)
                       .foregroundColor(Color("LightShade"))
                       .padding(.top)
                   Text("SwiftUI")
                       .font(.largeTitle)
                       .bold()
                       .foregroundColor(Color("LightShade"))
                   
                   GeometryReader { gr in
                       HStack {
                           VStack(spacing: 40) {
                               Image("P1")
                               Text("Learn the future of iOS Development.")
                                   .padding()
                                   .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.1))
                           }.frame(width: gr.frame(in: .global).width)
                           VStack(spacing: 40) {
                               Image("P2")
                               Text("The best way to get your UI to how you wanted it to look like when first designed.")
                                   .padding()
                                   .fixedSize(horizontal: false, vertical: true)
                                   .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.1))
                           }.frame(width: gr.frame(in: .global).width)
                           VStack(spacing: 40) {
                               Image("P3")
                               Text("Master SwiftUI Today!.")
                                   .padding()
                                   .fixedSize(horizontal: false, vertical: true)
                                   .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.1))
                           }.frame(width: gr.frame(in: .global).width)
                       }
                       .multilineTextAlignment(.center)
                       .foregroundColor(Color("LightShade"))
                       .font(.title)
                       .padding(.vertical, 60)
                       .frame(width: gr.frame(in: .global).width * 3)
                       .frame(maxHeight: .infinity)
                       .offset(x: self.step == 1 ? gr.frame(in: .global).width : self.step == 2 ? 0 : -gr.frame(in: .global).width)
                       .animation(Animation.interpolatingSpring(stiffness: 40, damping: 8))
                   }
                   HStack(spacing: 20) {
                       Button(action: {self.step = 1}) {
                           Text("1")
                            .foregroundColor(.black)
                               .padding()
                               .scaleEffect(step == 1 ? 1 : 0.65)
                       }
                       Button(action: {self.step = 2}) {
                           Text("2")
                            .foregroundColor(.black)
                               .padding()
                               .scaleEffect(step == 2 ? 1 : 0.65)
                       }
                       Button(action: {self.step = 3}) {
                           Text("3")
                            .foregroundColor(.black)
                               .padding()
                               .scaleEffect(step == 3 ? 1 : 0.65)
                       }
                   }
                   .animation(.spring(response: 0.4, dampingFraction: 0.5))
                   .font(.largeTitle)
                   .accentColor(Color("LightAccent"))
                   
                   Button(action: {
                    self.switchView = true
                   }) {
                       HStack {
                           Text("Continue")
                            .background(Color.blue)
//                           Image(systemName: "chevron.right")
                       }
                       .padding(.horizontal)
                       .padding()
                       .background(Capsule().fill(Color("Accent2")))
                       .accentColor(Color("LightAccent"))
                       .opacity(step == 3 ? 1 : 0)
                       .animation(.none)
                       .scaleEffect(step == 3 ? 1 : 0.01)
                       .animation(Animation.interpolatingSpring(stiffness: 50, damping: 10, initialVelocity: 10))
                   }
               }
           }
}

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
