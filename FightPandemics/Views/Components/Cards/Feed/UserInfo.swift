//
//  UserInfo.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/18/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct UserInfo: View {
    var body: some View {
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
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo()
            .previewLayout(.fixed(width: 395, height: 362))
    }
}
