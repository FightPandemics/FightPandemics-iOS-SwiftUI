//
//  OverlayOne.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct OverlayOne: View {
    
    func someAction() {}
    
    var body: some View {
        VStack {
            Text("Title")
                .font(.custom("Poppins-Bold", size: 16))
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text("This is a paragraph")
                .font(.custom("WorkSans-Regular", size: 12))
            Button(action: someAction) {
                PillButton(title: "Label", cornerRadius: 5, titleSize: 15)
                    .padding(.top, 10)
            }
            Button(action: someAction) {
                PillButton(title: "Label", cornerRadius: 5, titleSize: 15)
                    .padding(.top, 10)
            }
            Button(action: someAction) {
                PillButton(title: "Label", cornerRadius: 5, titleSize: 15)
                    .padding(.top, 10)
            }
            Button(action: someAction) {
                PillButton(title: "Label", backgroundColor: FPColor.veryLightPinkTwo, titleColor: FPColor.black, cornerRadius: 5,titleSize: 15)
                    .padding(.top, 10)
            }

        }.padding()
    }
}

struct OverlayOne_Previews: PreviewProvider {
    static var previews: some View {
        OverlayOne()
    }
}
