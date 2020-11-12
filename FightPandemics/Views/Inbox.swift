//
//  Inbox.swift
//  FPTest
//
//  Created by Scott on 8/14/20.
//  Copyright © 2020 Scott. All rights reserved.
//
// This view is undefined in Zepplin, waiting for UX..

import SwiftUI

struct Inbox: View {
    let messages = ["first", "second", "third", "fourth"]
    @State private var message = ""
    
    var body: some View {
        
        NavigationView {
            List {
                Text("First message")
                Text("Second message")
                Text("Third message")
            }
            .navigationBarTitle("Inbox")
            .navigationBarItems(leading: Text("Add"), trailing: Text("Edit"))
            .font(.body)
        }
    }
}

struct Inbox_Previews: PreviewProvider {
    static var previews: some View {
        Inbox()
    }
}
