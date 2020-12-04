//
//  HeaderContainer.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct HeaderContainer: View {
    
    
    func someAction() {}
    
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

                Button(action: someAction) {
                    // More Horizontal Icon
                    Image("more-horizontal-icon")
                }
  


            }
        }
}

struct HeaderContainer_Previews: PreviewProvider {
    static var previews: some View {
        HeaderContainer()
    }
}
