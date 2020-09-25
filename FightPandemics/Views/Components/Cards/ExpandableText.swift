//
//  ExpandableText.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/24/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct ExpandableText: View {
    @State var text: String
    @State var lineLimit: Int

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Text(text)
                .lineLimit(lineLimit)
                .font(.iosNativeP114Px)
            Button(action: {
                print("View More Tapped!")
            }) {
                Text("View More")
                    .font(.iosNativeP114Px)
                    .foregroundColor(Color("purpleishBlue"))
            }
        }
    }
}

struct ExpandableText_Previews: PreviewProvider {
    static var previews: some View {
        ExpandableText(text: "Max 6 lines for the preview of the post. Max 6 line for the preview of the post. Max 6 lins for the preview of the post. Max 6 line for the preview of the post. Max 6 line for the preview of the post. Max 6 line for the preview of the post. Max 6 line for the preview of ...", lineLimit: 6)
            .previewLayout(.fixed(width: 395, height: 362))
    }
}
