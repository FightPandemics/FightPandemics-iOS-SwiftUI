//
//  UserContainer.swift
//  FightPandemics
//
//  Created by Luko on 20/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct UserContainer: View {
    var body: some View {
        // Logo + User Name + Location
        HStack {
            
            // Logo
            Text("VM")
                .font(.custom("Poppins-Medium", size: 14))
                .frame(width: 36, height: 36, alignment: .center)
                .foregroundColor(FPColor.purpleishBlue)
                .background(FPColor.paleGreyTwo)
                .cornerRadius(18)
                .overlay(
                    RoundedRectangle(cornerRadius: 18).stroke(FPColor.purpleishBlue, lineWidth: 1)
                )
            
            // User Name + Location
            VStack(alignment: .leading) {
                
                // User Name
                Text("Victor Maragiaglio")
                    .font(.custom("Poppins-Medium", size: 14))
                
                // Point + Location
                HStack {
                    Image(systemName: "circle.fill")
                            .font(.system(size: 6))
                        .foregroundColor(FPColor.purpleishBlue)
                    Text("Berlin, Germany").font(.custom("WorkSans-Regular", size: 11))
                        .foregroundColor(FPColor.brownGrey)
                }
            }
            Spacer()
        }
    }
}

struct UserContainer_Previews: PreviewProvider {
    static var previews: some View {
        UserContainer()
    }
}
