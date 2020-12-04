//
//  OverlayTwo.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct OverlayTwo: View {
    
    func someAction() {}
    
    var body: some View {
        VStack {
            Text("Title")
                .font(.custom("Poppins-Bold", size: 16))
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text("This is a paragraph")
                .font(.custom("WorkSans-Regular", size: 12))
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            HStack {
                
                Button(action: someAction) {
                    PillButton(title: "Button Label", backgroundColor: FPColor.veryLightPink, titleColor: FPColor.purpleishBlue, titleSize: 14)
                }
                Spacer(minLength: 20)
                Button(action: someAction) {
                    PillButton(title: "Button Label", titleSize: 14)
                }
            }
        }.padding()
    }
}

struct OverlayTwo_Previews: PreviewProvider {
    static var previews: some View {
        OverlayTwo()
    }
}
