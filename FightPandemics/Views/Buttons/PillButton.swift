//  PillButton.swift
//  FightPandemics
import SwiftUI
struct LogInButton : View {
    
@State private var buttonDisabled = true
var backgroundColor : Color
let buttonText : String
var foregroundColor : Color

var body : some View {
    
 HStack {
            
    Text (buttonText)
            .font (.system(size: 15,  design: .monospaced))
            .fontWeight (.bold)
        }
        .padding ()
        .foregroundColor (foregroundColor)
        .frame (maxWidth: .infinity)
        .background (backgroundColor)
        .cornerRadius (40)
        .overlay (
            Capsule (style: .continuous)
            .stroke (
                Color ("purpleishBlue"),
                style : StrokeStyle (lineWidth: 1)))  }}

struct SignUpButton : View {
    var backgroundColor : Color
    let buttonText : String
    var foregroundColor : Color
    
    var body : some View {
        
HStack {
        
    Text (buttonText)
        .font (.system(size: 15,  design: .monospaced))
        .fontWeight (.bold)
        }
        .padding ()
        .foregroundColor (foregroundColor)
        .frame (maxWidth: .infinity)
        .background (backgroundColor)
        .cornerRadius (40)
        .overlay (
            Capsule (style: .continuous)
            .stroke (
                Color ("purpleishBlue"),
                style : StrokeStyle (lineWidth: 0)))   }}
    
struct SignUpButton_Previews : PreviewProvider {
    static var previews : some View {
       
        
        LogInButton (
            backgroundColor : Color ("white"),
            buttonText : "Log in",
            foregroundColor : Color ("purpleishBlue"))
        
        SignUpButton (
            backgroundColor : Color ("purpleishBlue"),
            buttonText : "Sign Up",
            foregroundColor : Color ("white"))     }}

