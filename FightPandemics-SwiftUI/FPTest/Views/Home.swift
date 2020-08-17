//
//  Home.swift
//  FPTest
//
//  Created by Scott on 8/14/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    let helpMenuSelection = ["All", "Offers", "Requests"]
    @State private var selectedSection = 0
    
    var body: some View {
        
        VStack {
            
            Picker("Selection", selection: $selectedSection) {
                Text("All").tag(0)
                Text("Offers").tag(1)
                Text("Requests").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color("colorSecond"))
            
            Spacer()
            
            Text("Feed will go here")
                .font(.body)
            
            Spacer()
            
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


