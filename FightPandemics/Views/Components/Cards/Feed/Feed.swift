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
            MetaInfo()
            Spacer().frame(height: 3)
            UserInfo()
            Spacer().frame(height: 15)
            Text("This is the title of the post.\nMax 2 lines")
                .font(.iosNativeH122Px)
                .lineLimit(2)
            Spacer().frame(height: 10)
            TextBody()
            Spacer().frame(height: 20)
            SocialButtonsGroup()
        }
        .frame(width: 335, alignment: .center)
        .padding(.all, 20)
        .border(Color("veryLightPink"), width: 1)
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
            .previewLayout(.fixed(width: 395, height: 362))
    }
}
