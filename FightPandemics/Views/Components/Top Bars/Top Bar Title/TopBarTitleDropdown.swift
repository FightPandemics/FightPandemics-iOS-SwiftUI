//
//  TopBarTitleDropdown.swift
//  FightPandemics
//
//  Created by Luko on 30/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct TopBarTitleDropdown: View {
    
    func someAction() {}
    
    var body: some View {
        HStack {
            Text("Title")
                .font(.custom("Poppins-Bold", size: 22))
                .foregroundColor(FPColor.black)
            Button(action: someAction) {
                Image("chevron-down-icon")
            }
            Spacer()
            Button(action: someAction) {
                Image("menu-icon")
            }
            
        }.padding()
    }
}

struct TopBarTitleDropdown_Previews: PreviewProvider {
    static var previews: some View {
        TopBarTitleDropdown()
    }
}
