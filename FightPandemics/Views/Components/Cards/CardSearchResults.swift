//
//  CardSearchResults.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI


struct CardSearchResults: View {
    
    func viewMore() {}
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Text("Posted xhrs ago")
                    .font(.custom("WorkSans-Regular", size: 11))
                    .foregroundColor(FPColor.brownGrey)
                Spacer()
                Tag(title: "Groceries")
            }
            VStack(alignment: .leading) {
                Text("This is a title message.")
                    .font(.custom("Poppins-Bold", size: 16))
                Text("Max 3 lines for the preview of the post. Max 3 line for the preview of the post. Max 3 linse for the preview of the post. Max 3 lines")
                    .font(.custom("WorkSans-Regular", size: 14))
                HStack {
                    Spacer()
                    Button(action: viewMore) {
                        Text("View more...")
                            .font(.custom("WorkSans-Regular", size: 14))
                            .foregroundColor(FPColor.purpleishBlue)
                    }
                }
            }
        }.padding()
    }
}

struct CardSearchResultsArray: View {
    
    func viewMore() {}
    
    var body: some View {
        
        ScrollView {
            VStack {
               
                CardSearchResults()
                CardSearchResults()
                CardSearchResults()
                CardSearchResults()
                CardSearchResults()
                CardSearchResults()
                CardSearchResults()
        
            }
        }
    }
}

struct CardSearchResults_Previews: PreviewProvider {
    static var previews: some View {
        CardSearchResults()
    }
}
