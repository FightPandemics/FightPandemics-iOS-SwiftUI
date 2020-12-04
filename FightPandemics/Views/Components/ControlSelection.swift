//
//  ControlSelection.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct ControlSelection: View {
    
    @State private var buttonPressed: Bool = false
    
    func someAction() { buttonPressed.toggle() }
    
    var body: some View {
        HStack {
            Text("Label")
                .font(.custom("WorkSans-Regular", size: 14))
            Spacer()
            Button(action: someAction) {
                if buttonPressed {
                    Image(systemName: "heart.fill")
                } else  {
                    Image(systemName: "phone")
                }
            }
        }.padding()
    }
}

// MARK: Previews
struct ControlSelection_Previews: PreviewProvider {
    static var previews: some View {
        ControlSelection()
    }
}
