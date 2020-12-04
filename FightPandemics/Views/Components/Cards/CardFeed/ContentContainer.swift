//
//  ContentContainer.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct ContentContainer: View {

    var contentTitle = ""
    var contentDescription = ""
    
    init(contentTitle: String, contentDescription: String) {
        
        self.contentTitle = contentTitle
        self.contentDescription = contentDescription
    }
    
    func someAction() {}
    
    var body: some View {
            // Title + Content + View More
            VStack(alignment: .leading) {

                // Title
                Text(contentTitle)
                    .font(.custom("Poppins-Bold", size: 22))
                    .foregroundColor(FPColor.black)

                // Content
                Text(contentDescription)
                    .font(.custom("WorkSans-Regular", size: 14))
                    .foregroundColor(FPColor.black)

                // View More
                HStack {
                    Spacer()
                    Button(action: someAction) {
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
        ContentContainer(contentTitle: "ola", contentDescription: "chay")
    }
}
