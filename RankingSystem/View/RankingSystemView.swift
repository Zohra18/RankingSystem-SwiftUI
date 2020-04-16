//
//  RankingSystemView.swift
//  RankingSystem
//
//  Created by Zohra Achour on 16/04/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

// view of each cell of the List
struct RankingSystemView: View {
    
    var gamerList: Gamer
    
    var body: some View {
        
        HStack(spacing: 20) {
            Image(gamerList.pictureName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .mask(Circle())
            
            VStack(alignment: .leading) {
                Text(gamerList.gamerName)
                    .font(.title)
                
                Text("\(gamerList.gamerPoints) RP")
                    .font(.headline)
                    .foregroundColor(Color("fadeGreen"))
            }
        }
    }
}
