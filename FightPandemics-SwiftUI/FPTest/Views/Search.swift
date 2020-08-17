//
//  Search.swift
//  FPTest
//
//  Created by Scott on 8/14/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI


struct Search: View {
    
    let helpMenuSelection = ["All", "Offers", "Requests"]
    @State private var searchText = ""
    
    var body: some View {
        
        VStack {
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding()
                
                TextField("Search", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            
            Home()
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
