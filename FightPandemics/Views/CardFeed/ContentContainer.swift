//
//  ContentContainer.swift
//  FightPandemics
//
//  Created by Luko on 20/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct ContentContainer: View {
    var body: some View {
        // Title + Content + View More
        VStack(alignment: .leading) {
            
            // Title
            Text("I have 100 face Masks to give away.") .font(.custom("Poppins-Bold", size: 22))
                .foregroundColor(FPColor.black)
            
            // Content
            Text("I have a small store and I would like to give away 100 mask but I don’t know where, please contact me if you need them. I have a small store and I would like to give away 100 mask but I don’t know where, please contact me if you need them. please contact m ...")
                .font(.custom("WorkSans-Regular", size: 14))
                .foregroundColor(FPColor.black)
            
            // View More
            HStack {
                Spacer()
                Button(action: {
                    // What to perform
                }) {
                    Text("View More")
                        .font(.custom("WorkSans-Medium", size: 12))
                            .foregroundColor(FPColor.purpleishBlue)
                }
            }.padding(.top, 1)
        }
    }
}

struct ContentContainer_Previews: PreviewProvider {
    static var previews: some View {
        ContentContainer()
    }
}
