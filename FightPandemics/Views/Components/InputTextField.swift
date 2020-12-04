//
//  TextFieldWithBottomLine.swift
//  FightPandemics
//
//  Created by Luko on 27/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct InputTextField: View {
    
    var placeholder: String = ""
    var withIcon: Bool = true
    
    init(placeholder: String, withIcon: Bool = false) {
        self.placeholder = placeholder
        self.withIcon = withIcon
        
    }
    
    @State private var fieldUrl: String = ""
    
    var body: some View {
        
        VStack {
            
            HStack {
                TextField(placeholder, text: $fieldUrl)
                    .font(.custom("WorkSans-Medium", size: 16))
                Spacer()
                if withIcon {
                    Image("home-icon")
                }
                
            }
         

            Rectangle()
                .fill(FPColor.purpleishBlue)
                .frame(height: 1)
                .edgesIgnoringSafeArea(.horizontal)
                .padding(.bottom)
        }.padding()
    }
}

// MARK: Previews
struct TextFieldWithBottomLine_Previews: PreviewProvider {
    static var previews: some View {
        InputTextField(placeholder: "Example", withIcon: false)
    }
}
