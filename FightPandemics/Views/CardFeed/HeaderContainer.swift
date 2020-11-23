//
//  HeaderContainer.swift
//  FightPandemics
//
//  Created by Luko on 20/11/2020.
//  Copyright © 2020 FightPandemics. All rights reserved.
//

import SwiftUI

struct HeaderContainer: View {
    var body: some View {
        // Offers-Requests + Date + ...
        HStack {
            
            // Requests
            Text("Offers")
                .font(.custom("WorkSans-Regular", size: 11))
                .foregroundColor(FPColor.purpleishBlue)
            
            Circle()
                .frame(width: 2, height: 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(FPColor.purpleishBlue)
            
            // Posted Date
            Text("Post xhs Ago")
                .font(.custom("WorkSans-Regular", size: 11))
                .foregroundColor(FPColor.brownGrey)
            
            Spacer()
            
            // More Horizontal Icon
            Image("more-horizontal-icon")
            

        }
    }
}

struct HeaderContainer_Previews: PreviewProvider {
    static var previews: some View {
        HeaderContainer()
    }
}
