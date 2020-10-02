//
//  TagSelected.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/17/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct TagSelected: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.iosNativeP311Px)
            .padding(.vertical, 8)
            .padding(.horizontal, 20)
            .foregroundColor(Color("purpleishBlue"))
            .background(Color("paleGreyTwo"))
            .cornerRadius(4)
    }
}

struct TagSelected_Previews: PreviewProvider {
    static var previews: some View {
        TagSelected(text: "Label")
            .previewLayout(.fixed(width: 100, height: 60))
    }
}
