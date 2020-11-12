//
//  ProfileSignedIn.swift
//  FPTest
//
//  Created by Scott on 8/14/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct  Blank: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        ZStack{
        Text("Supposed to be web link")
            .font(.title)
        }
        .background(Color(#colorLiteral(red: 0.9687533975, green: 0.9724208713, blue: 0.9876253009, alpha: 1)))
        .navigationTitle("Test Page")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: { presentation.wrappedValue.dismiss() }) {
          Image(systemName: "chevron.left")
            .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))
            .imageScale(.large)}) }}

struct Blank_Previews: PreviewProvider {
    static var previews: some View {
        Blank()}}
