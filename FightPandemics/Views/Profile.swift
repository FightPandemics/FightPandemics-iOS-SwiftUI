//
//  Profile.swift
//  FPTest
//
//  Created by Scott on 8/14/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        NavigationView {
            Form {
                Text("Name")
                Text("Location")
                Text("Biography")
                Text("Links")
            }.navigationBarTitle("Profile")
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
