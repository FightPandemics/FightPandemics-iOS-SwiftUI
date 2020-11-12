//
//  RectangleButton.swift
//  FightPandemics
//
//  Created by newuser on 10/29/20.
//

import SwiftUI

struct RectangleButton: View {
    
var backgroundColor: Color
var buttonText: String
    
    var body: some View {
        
Button(action: {print("Button2")}) {
            
Text(buttonText)
            .fontWeight(.bold)
            .font(.largeTitle)
            .padding()
            .background(backgroundColor)
            .foregroundColor(.white)
            .padding(8)
            .border(backgroundColor, width: 5)} }  }

struct RectangleButton_Previews: PreviewProvider {
    static var previews: some View {
        RectangleButton(backgroundColor: Color.black,buttonText: "Welcome to SwiftUI")  } }
