//
//  SelectionSheetButton.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/24/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct SelectionSheetButton: View {
    @State var selected: Bool = false
    
    var body: some View {
        Button(action: {
            selected.toggle()
        }) {
            Text("Button Label")
                .font(.iosNativeP114Px)
        }
        .frame(width: 335, height: 45)
        .background(selected ? Color("purpleishBlue") : Color("veryLightPinkTwo"))
        .foregroundColor(selected ? Color("white") : Color("black"))
        .cornerRadius(4.0)
    }
}

struct SelectionSheetButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectionSheetButton()
    }
}
