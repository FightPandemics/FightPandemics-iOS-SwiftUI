//
//  ReqOffBar.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct ReqOffBar: View {

    @State private var selectedSection = 0
    private let sections = ["All","Offers","Requests"]

    var body: some View {
        Picker("Section", selection: $selectedSection) {
            ForEach(0..<sections.count) { index in
                Text(self.sections[index]).font(.custom("Poppins-Medium", size: 13))
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}


struct FixedBar_Previews: PreviewProvider {
    static var previews: some View {
        ReqOffBar()
    }
}
