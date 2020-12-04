//
//  Dropdown.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

// https://www.youtube.com/watch?v=0LrP6dv8tHY

struct Dropdown: View {
    
    @State private var isExpanded = false
    @State private var selectItem = "Input"
    
    let dropdownItems = ["item one", "item two", "item three", "item four"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            Text("Label")
                .font(.custom("DMSans-Medium", size: 18))
                .foregroundColor(FPColor.purpleishBlue)
            DisclosureGroup("\(selectItem)", isExpanded: $isExpanded) {
                VStack {
                    ForEach(dropdownItems, id: \.self) {
                        item in
                        Text("\(item)")
                            .font(.subheadline)
                            .padding()
                            .onTapGesture(perform: {
                                self.selectItem = item
                                withAnimation {
                                    self.isExpanded.toggle()
                                }
                            })
                        }
                    }
            }
            .accentColor(FPColor.purpleishBlue)
            .foregroundColor(FPColor.purpleishBlue)
            .background(FPColor.paleGreyTwo)
            .cornerRadius(8)
            .padding(.all)

            
            
            Spacer()
            
        }.padding(.all)
    }
}

// MARK: Previews
struct Dropdown_Previews: PreviewProvider {
    static var previews: some View {
        Dropdown()
    }
}
