//
//  HelpMenuBar.swift
//  FightPandemics
//
//  Created by Luko on 11/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct HelpMenuBar: View {
    
    @State private var selectedSection = 0
    private let sections = ["All","Offers","Requests"]
    
    // Picker Appearance (UISegmentedControl - UIKit)
    init() {
         UISegmentedControl.appearance().setTitleTextAttributes(
             [
                .font: UIFont(name: "Poppins-Bold", size: 13) ?? "",
         ], for: .selected)

         UISegmentedControl.appearance().setTitleTextAttributes(
             [
                .font: UIFont(name: "Poppins-Regular", size: 13) ?? "",
         ], for: .normal)
     }
    
    var body: some View {
        Picker("Section", selection: $selectedSection) {
            ForEach(0..<sections.count) { index in
                Text(self.sections[index])
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
