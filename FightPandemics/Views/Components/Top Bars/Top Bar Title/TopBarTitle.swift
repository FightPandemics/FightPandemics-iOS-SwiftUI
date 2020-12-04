//
//  TopBarTitle.swift
//  FightPandemics
//
//  Created by Luko on 30/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct TopBarTitle: View {

    
    var body: some View {
        HStack {
            Text("Title")
                .font(.custom("Poppins-Bold", size: 22))
                .foregroundColor(FPColor.black)
            Spacer()
        }.padding()
    }
}

struct TopBarTitle_Previews: PreviewProvider {
    static var previews: some View {
        TopBarTitle()
    }
}
