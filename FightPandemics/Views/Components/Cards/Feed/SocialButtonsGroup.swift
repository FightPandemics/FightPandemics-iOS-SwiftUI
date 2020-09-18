//
//  SocialButtonsGroup.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/18/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct SocialButtonsGroup: View {
    var body: some View {
        HStack() {
            HStack(spacing: 8) {
                Button(action: {
                    print("Like Button Tapped!")
                }) {
                    Image("heart-filled-icon")
                        .frame(width: 24, height: 24)
                }
                Text("12")
                    .font(.iosNativeP212Px)
                    .foregroundColor(Color("brownGreyTwo"))
            }
            Spacer().frame(width: 28)
            HStack(spacing: 8) {
                Image("msg-icon")
                    .frame(width: 24, height: 24)
                Text("3")
                    .font(.iosNativeP212Px)
                    .foregroundColor(Color("brownGreyTwo"))
            }
            Spacer().frame(width: 31)
            Button(action: {
                print("Social Button Tapped!")
            }) {
                Image("share-icon")
                    .frame(width: 24, height: 24)
            }
        }
    }
}

struct SocialButtonGroup_Previews: PreviewProvider {
    static var previews: some View {
        SocialButtonsGroup()
            .previewLayout(.fixed(width: 395, height: 362))
    }
}
