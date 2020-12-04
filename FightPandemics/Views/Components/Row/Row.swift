//
//  Row.swift
//  FightPandemics
// 
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct Row: View {
    
    // Properties
    private var title: String = ""
    private var description: String = ""
    private var titleColor: Color? = nil
    private var withButton: Bool = false
    
    // Initializer
    init(title: String,
         description: String,
         titleColor:Color = FPColor.purpleishBlue,
         withButton: Bool = false) {
        
        self.title = title
        self.description = description
        self.titleColor = titleColor
        self.withButton = withButton
    }
    
    // Class Methods
    func someAction() {}
    
    // Render
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.custom("WorkSans-Medium", size: 16))
                    .foregroundColor(titleColor)
                Text(description    )
                    .font(.custom("WorkSans-Regular", size: 12))
                    .foregroundColor(Color.gray)
            }
            Spacer()
            
            if withButton {
                Button(action: someAction) {
                    Image("chevron-right-icon")
                }
            }
        }.padding()
    }
}

// MARK: Previews
struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(title: "Label", description: "This is a description", withButton: true)
    }
}
