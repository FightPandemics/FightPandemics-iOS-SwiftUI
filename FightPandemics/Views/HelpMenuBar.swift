//
//  HelpMenuBar.swift
//  FightPandemics
//
//  Created by Luko on 11/11/2020.
//  Copyright © 2020 FightPandemics. All rights reserved.
//

import SwiftUI

struct HelpMenuBar: View {
    
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


struct HelpMenuBar_Previews: PreviewProvider {
    static var previews: some View {
            HelpMenuBar()
    }
}
