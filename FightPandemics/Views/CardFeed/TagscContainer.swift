//
//  TagsContainer.swift
//  FightPandemics
//
//  Created by Luko on 20/11/2020.
//  Copyright © 2020 FightPandemics. All rights reserved.
//

import SwiftUI

struct TagsContainer: View {
    var body: some View {
        // Tags
        HStack {
            ZStack {
                FPColor.paleGreyTwo.frame(width: 100, height: 30)
                Text("Groceries")
                    .font(.custom("WorkSans-Regular", size: 11))
                    .foregroundColor(FPColor.purpleishBlue)
            }.cornerRadius(4)
            ZStack {
                FPColor.paleGreyTwo.frame(width: 100, height: 30)
                Text("Medical Supplies")
                    .font(.custom("WorkSans-Regular", size: 11))
                    .foregroundColor(FPColor.purpleishBlue)
            }.cornerRadius(4)
            ZStack {
                FPColor.paleGreyTwo.frame(width: 100, height: 30)
                Text("Label")
                    .font(.custom("WorkSans-Regular", size: 11))
                    .foregroundColor(FPColor.purpleishBlue)
            }.cornerRadius(4)
            Spacer()
        }
    }
}

struct TagsContainer_Previews: PreviewProvider {
    static var previews: some View {
        TagsContainer()
    }
}
