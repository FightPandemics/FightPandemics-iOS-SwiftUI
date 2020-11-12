//
//  Home.swift
//  FPTest
//
//  Created by Scott on 8/14/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        
        VStack {
            
            HelpMenuBar()
            
            Spacer()
            
            Text("Feed will go here")
                .font(.subheadline)
            
            Spacer()
            
        }
    }
}



// MARK: Preview
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}



