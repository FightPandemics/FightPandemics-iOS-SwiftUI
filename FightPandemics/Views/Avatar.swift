//
//  Avatar.swift
//  FightPandemics
//
//  Created by Luko on 23/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct Avatar: View {
    var body: some View {
        
        Text("VM")
            .font(.custom("Poppins-Medium", size: 14))
            .frame(width: 36, height: 36, alignment: .center)
            .foregroundColor(FPColor.purpleishBlue)
            .background(FPColor.paleGreyTwo)
            .cornerRadius(18)
            .overlay(
                RoundedRectangle(cornerRadius: 18).stroke(FPColor.purpleishBlue, lineWidth: 1)
            )
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        Avatar()
    }
}
