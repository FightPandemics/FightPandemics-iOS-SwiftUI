//
//  SelectionSheetButton.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/24/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct SelectionSheetButton: View {
    let title: String
    let highlighted: Bool
    
    var body: some View {
        Button(action: {
            // TODO: Add button action here
        }) {
            Text(title)
                .font(.iosNativeP114Px)
        }
        .frame(width: 335, height: 45)
        .background(highlighted ? Color("purpleishBlue") : Color("veryLightPinkTwo"))
        .foregroundColor(highlighted ? Color("white") : Color("black"))
        .cornerRadius(4.0)
    }
}

struct SelectionSheetButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectionSheetButton(title: "Label", highlighted: false)
    }
}
