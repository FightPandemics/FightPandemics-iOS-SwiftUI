//
//  Settings_LoggedOut.swift
//  FightPandemics
//
//  Created by newuser on 11/10/20.
//  Copyright © 2020 Scott. All rights reserved.
//


import SwiftUI

struct Settings_LoggedOut: View {
    var body: some View {

      
            Form {
                Text("Name")
                Text("Location")
                Text("Biography")
                Text("Links")
            }.navigationBarTitle("Settings")
        
    }
}

struct Settings_LoggedOut_Previews: PreviewProvider {
    static var previews: some View {
        Settings_LoggedOut()
    }
}
