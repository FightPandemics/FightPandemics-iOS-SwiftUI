//
//  SearchResult.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/24/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct SearchResult: View {
    var body: some View {
        VStack(spacing: 0) {
            metaInfo
            Spacer().frame(height: 6)
            Text("This is a title message.")
                .font(.iosNativeH216Px)
            Spacer().frame(height: 10)
            ExpandableText(text: "Max 3 lines for the preview of the post. Max 3 line for the preview of the post. Max 3 linse for the preview of the post. Max 3 lines", lineLimit: 3)
        }
        .frame(width: 335, alignment: .center)
        .padding(.all, 20)
    }
    
    var metaInfo: some View {
        HStack(alignment: .top) {
            Text("Posted xhrs ago")
                .foregroundColor(Color("brownGrey"))
                .font(.iosNativeP311Px)
            Spacer()
            TagSelected()
        }
    }
}

struct SearchResult_Previews: PreviewProvider {
    static var previews: some View {
        SearchResult()
    }
}
