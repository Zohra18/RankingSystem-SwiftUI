//
//  TestFileView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 26/05/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct TestFileView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: OtherTestView(), label: {
                Text("Click me")
                })
            .navigationBarTitle("")
//              .navigationBarBackButtonHidden(true)
//             .navigationBarHidden(true)
        }
      
//        .statusBar(hidden: true)
        
    }
}

struct TestFileView_Previews: PreviewProvider {
    static var previews: some View {
        TestFileView()
    }
}
