//
//  RoundRectangleButton.swift
//  FightPandemics
//

import SwiftUI

struct RoundRectangleButton: View {
    
    var backgroundColor: Color
    var foregroundColor: Color
    var image: String
    var buttonText: String
    
    var body: some View {
        
        Button(action: {
            print("Round Rectangle Button")
        }) {
            
 HStack {
            Image(image)
                .font(.system(size: 20))
                
            Text(buttonText)}
                .padding(9)
                .frame(maxWidth: .infinity)
                .foregroundColor(foregroundColor)
                .background(backgroundColor)
                .cornerRadius(10)
                .font(.system(size: 14,  design: .monospaced))
    .frame(maxWidth: .infinity)  }  }}

    
struct RoundRectangleButton_Previews: PreviewProvider {
    
    @State static var fileName: String = "rounded"
    static var previews: some View {
        
    HStack{
        RoundRectangleButton(backgroundColor: Color.black,
                             foregroundColor: Color.white, image: "Apple", buttonText: "Welcome to SwiftUI")
        
            RoundRectangleButton(backgroundColor: Color.black,
                                 foregroundColor: Color.white, image: "Apple", buttonText: "Welcome to SwiftUI")  } }}



