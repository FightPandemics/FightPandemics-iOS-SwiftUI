//
//  TextBody.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/18/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct TextBody: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Text("Max 6 lines for the preview of the post. Max 6 line for the preview of the post. Max 6 lins for the preview of the post. Max 6 line for the preview of the post. Max 6 line for the preview of the post. Max 6 line for the preview of the post. Max 6 line for the preview of ...")
                .lineLimit(6)
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

struct TextBody_Previews: PreviewProvider {
    static var previews: some View {
        TextBody()
            .previewLayout(.fixed(width: 395, height: 362))
    }
}
