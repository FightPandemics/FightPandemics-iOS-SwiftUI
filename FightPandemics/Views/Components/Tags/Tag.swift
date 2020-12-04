//
//  Tag.swift
//  FightPandemics
//
//  Created by Luko on 28/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct Tag: View {
    
    @State private var isTagClosed = false
    
    // Properties
    private var title: String = ""
    private var titleColor: Color? = nil
    private var tagColor: Color? = nil
    private var icon: String = ""
    
    // Initializer
    init(title: String = "Label",
         tagColor: Color = FPColor.paleGreyTwo,
         titleColor: Color = FPColor.purpleishBlue,
         icon: String = "") {
        
        self.title = title
        self.tagColor = tagColor
        self.titleColor = titleColor
        self.icon = icon
    }
    
    func someAction() {
        isTagClosed.toggle()
    }
    
    // Render
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(titleColor)
                .font(.custom("WorkSans-Regular", size: 11))
                .multilineTextAlignment(.center)
                .cornerRadius(4)
                .frame(minWidth: 84)
                .frame(height: 30)
            Button(action: someAction) {
                Image(icon).padding(.trailing, 5)
            }
            
        }.background(tagColor)
        
        if isTagClosed {
            EmptyView()
        }
    }
}

// MARK: Previews
struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(title: "Label", titleColor: FPColor.purpleishBlue, icon: "close-blue-icon")
    }
}
