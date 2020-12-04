//
//  TopLogoBar.swift
//  FightPandemics
//
//  Created by Luko on 30/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct TopLogoBar: View {
    
    @State private var isTagButtonTapped: Bool = false
    
    func someAction() {
        isTagButtonTapped.toggle()
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Image("nav-FP-logo")
                Spacer()
                Button(action: someAction) {
                    Image("filter-icon")
                }
            }
            
            HStack {
                if isTagButtonTapped {
                    Tag(title: "Groceries", icon: "close-blue-icon")
                    Tag(title: "Groceries", icon: "close-blue-icon")
                }
            }
            .animation(.easeOut)
            
        }
        .padding(.bottom)
    }
}

struct TopBarLogo_Previews: PreviewProvider {
    static var previews: some View {
        TopLogoBar()
    }
}
