//
//  TopBarSearch.swift
//  FightPandemics
//
//  Created by Luko on 30/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct TopBarSearch: View {
    
    @State private var isCancelAvailable: Bool = true
    @State private var isTagButtonTapped: Bool = false
    
    func someAction() { isTagButtonTapped.toggle() }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Search()
                
                if isCancelAvailable {
                    Button(action: someAction) {
                        Image("filter-icon")
                    }
                } else {
                    Button(action: someAction) {
                        Text("Cancel")
                            .font(.custom("Poppins-Medium", size: 14))
                            .foregroundColor(FPColor.purpleishBlue)
                    }
                }
            }
            
            HStack {
                if isTagButtonTapped {
                    Tag(title: "Groceries", icon: "close-blue-icon")
                    Tag(title: "Groceries", icon: "close-blue-icon")
                }
            }.animation(.easeOut)
            
        }.padding()
    }
}

struct TopBarSearch_Previews: PreviewProvider {
    static var previews: some View {
        TopBarSearch()
    }
}
