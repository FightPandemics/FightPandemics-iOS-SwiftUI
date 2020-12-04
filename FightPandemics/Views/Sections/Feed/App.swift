//
//  App.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct App: View {
    var body: some View {
            VStack {
                TopLogoBar()
                ReqOffBar()
                NavBar()
            }.padding()
    }
}

struct App_Previews: PreviewProvider {
    static var previews: some View {
        App()
    }
}
