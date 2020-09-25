//
//  Feed.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/17/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            metaInfo
            Spacer().frame(height: 3)
            userInfo
            Spacer().frame(height: 15)
            Text("This is the title of the post.\nMax 2 lines")
                .font(.iosNativeH122Px)
                .lineLimit(2)
            Spacer().frame(height: 10)
            ExpandableText(text: "Max 6 lines for the preview of the post. Max 6 line for the preview of the post. Max 6 lins for the preview of the post. Max 6 line for the preview of the post. Max 6 line for the preview of the post. Max 6 line for the preview of the post. Max 6 line for the preview of ...", lineLimit: 6)
            Spacer().frame(height: 20)
            socialButtons
        }
        .frame(width: 335, alignment: .center)
        .padding(.all, 20)
        .border(Color("veryLightPink"), width: 1)
    }
    
    var metaInfo: some View {
        HStack(alignment: .top) {
            HStack(spacing: 10) {
                Text("Requests")
                Ellipse()
                    .foregroundColor(Color("purpleishBlue"))
                    .frame(width: 2, height: 2)
                Text("Posted xhrs ago")
                    .foregroundColor(Color("brownGrey"))
            }
            .foregroundColor(Color("purpleishBlue"))
            .font(.iosNativeP311Px)
            Spacer()
            TagSelected()
        }
    }
    
    var userInfo: some View {
        HStack(spacing: 10) {
            ZStack {
                Circle()
                    .strokeBorder(Color("purpleishBlue"), lineWidth: 1)
                    .background(Circle().fill(Color("paleGreyTwo")))
                    .frame(width: 36, height: 36)
                Text("NN")
                    .font(.iosNativeH314Px)
                    .foregroundColor(Color("purpleishBlue"))
            }
            VStack(alignment: .leading, spacing: 0) {
                Text("User Name")
                    .font(.iosNativeH314Px)
                    .lineSpacing(18)
                HStack(alignment: .center, spacing: 4) {
                    Ellipse()
                        .foregroundColor(Color("purpleishBlue"))
                        .frame(width: 6, height: 6)
                    Text("City, Country")
                        .font(.iosNativeP311Px)
                        .foregroundColor(Color("brownGrey"))
                        .lineSpacing(15.4)
                }
            }
        }
    }
    
    var socialButtons: some View {
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
                print("Share Button Tapped!")
            }) {
                Image("share-icon")
                    .frame(width: 24, height: 24)
            }
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Feed()
                .previewLayout(.fixed(width: 395, height: 362))
                .environment(\.colorScheme, .light)
        }
        
    }
}
