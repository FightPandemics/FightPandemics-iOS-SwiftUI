//
//  Search.swift
//  FightPandemics
//
//  Created by Luko on 28/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct Search: View {
    
    @State private var searchText: String = ""
    
    func deleteText() {
        searchText.removeAll()
    }

    var body: some View {
        HStack {
            Image("magnifier-icon").padding()
            TextField("Search", text: $searchText)
            
            if !searchText.isEmpty {
                Button(action: deleteText) {
                    Image("close-icon").padding()
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 48, alignment: .center)
        .background(FPColor.veryLightPinkTwo)
        .cornerRadius(29)
    }
}


struct SearchC_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
