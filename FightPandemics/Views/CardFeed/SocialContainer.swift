//
//  SocialContainer.swift
//  FightPandemics
//
//  Created by Luko on 20/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct SocialContainer: View {
    var body: some View {
        // Social Media
        HStack {
            HStack {
                Image("heart-icon")
                Text("12")
                    .font(.custom("WorkSans-Regular", size: 12))
                    .foregroundColor(FPColor.brownGrey)
            }.padding(.trailing, 14)
            
            HStack {
                Image("msg-filled-icon")
                Text("4").font(.custom("WorkSans-Regular", size: 12))
                    .foregroundColor(FPColor.brownGrey)
            }.padding(.trailing, 14)
            HStack {
                Image("share-icon")
            }
            Spacer()
        }
  
    }
}

struct SocialContainer_Previews: PreviewProvider {
    static var previews: some View {
        SocialContainer()
    }
}
