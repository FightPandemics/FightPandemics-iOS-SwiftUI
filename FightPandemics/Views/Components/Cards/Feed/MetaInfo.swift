//
//  MetaInfo.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/18/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct MetaInfo: View {
    var body: some View {
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
}

struct MetaInfo_Previews: PreviewProvider {
    static var previews: some View {
        MetaInfo()
            .previewLayout(.fixed(width: 395, height: 362))
    }
}
