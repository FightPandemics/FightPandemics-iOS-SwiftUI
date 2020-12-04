//
//  PillButton.swift
//  FightPandemics
//
//  Created by Luko on 27/11/2020.
//  Copyright © 2020 FightPandemics. All rights reserved.
//

import SwiftUI

struct PillButton: View {
    
    private var buttonTitle: String = ""
    
    init(buttonTitle: String) {
        self.buttonTitle = buttonTitle
    }
    
    func someAction() {}
    
    var body: some View {
        Button(action: someAction) {
            Text(self.buttonTitle).putTextButtonModifiers()
        }.putPillButtonModifiers()
    }
}


// MARK: Previews
struct PillButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryStandardButton(buttonTitle: "Example")
    }
}
