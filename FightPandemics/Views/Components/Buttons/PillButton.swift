//
//  PillButton.swift
//  FightPandemics
//
//  Created by Luko on 28/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct PillButton: View {
    
    // Properties
    private var title: String = ""
    private var titleColor: Color? = nil
    private var titleSize: CGFloat? = nil
    private var backgroundColor: Color? = nil
    private var opacity: Double? = nil
    private var cornerRadius: CGFloat? = nil
    
    // Initializer
    init(title: String,
         backgroundColor: Color = FPColor.purpleishBlue,
         opacity: Double = 1.0,
         titleColor:Color = FPColor.white,
         cornerRadius: CGFloat = 29,
         titleSize: CGFloat = 18) {
        
        self.title = title
        self.titleSize = titleSize
        self.titleColor = titleColor
        self.backgroundColor = backgroundColor
        self.opacity = opacity
        self.cornerRadius = cornerRadius
    }
    
    // Class Methods
    func someAction() {}
    
    // Render
    var body: some View {
            Text(self.title)
                .foregroundColor(titleColor)
                .font(.custom("Poppins-Medium", size: titleSize ?? 0))
 
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 58, alignment: .center)
        .background(backgroundColor)
        .opacity(opacity ?? 1.0)
        .cornerRadius(cornerRadius ?? 0)
    }
}

// MARK: Previews
struct PillButton_Previews: PreviewProvider {
    static var previews: some View {
        PillButton(title: "Example")
    }
}

// MARK: Zeplin Reference
/// https://bit.ly/36fijuh
 
