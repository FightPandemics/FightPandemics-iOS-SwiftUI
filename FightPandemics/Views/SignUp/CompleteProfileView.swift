////  ProfileSignedOutView.swift
//  FightPandemics
//
//  Created by newuser on 10/31/20.
//  Copyright © 2020 Scott. All rights reserved.
//
import SwiftUI
struct CompleteProfileView: View {

    @Environment(\.presentationMode) var presentation
    @State var shouldShowMyButton = false
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var location: String = ""
    @State var authenticationDidFail: Bool = false
    
func DisableSignUpButton() -> Bool{
    if firstName.isEmpty || lastName.isEmpty || location.isEmpty
        
        { return true}
        return false}
    
    var body: some View {
        
ZStack{Color( #colorLiteral(red: 0.9624996781, green: 0.9666767716, blue: 0.997005403, alpha: 1))
    VStack {
    VStack {
        
        TextField("", text: $firstName)
            .foregroundColor(Color("purpleishBlue"))
            .modifier(PlaceholderStyle(showPlaceHolder: firstName.isEmpty, placeholder: "First Name"))
            .foregroundColor(Color("purpleishBlue"))
            .font (Font.system(size: 12, weight: .semibold))
                       .padding (.bottom, 2)
                        
        Divider()
            .frame(height: 1)
            .background(Color("purpleishBlue"))
            .padding(.horizontal, 10)
                        
        TextField("", text: $lastName)
            .foregroundColor(Color("purpleishBlue"))
            .modifier(PlaceholderStyle(showPlaceHolder: lastName.isEmpty, placeholder: "Last Name"))
            .foregroundColor(Color("purpleishBlue"))
            .font (Font.system(size: 12, weight: .semibold))
            .padding (.bottom, 2)
                        
        Divider()
            .frame(height: 1)
            .background(Color("purpleishBlue"))
            .padding(.horizontal, 10)
                    
        SecureField("", text: $location)
            .foregroundColor(Color("purpleishBlue"))
            .modifier(PlaceholderStyle(showPlaceHolder: location.isEmpty, placeholder: "Location"))
            .foregroundColor(Color("purpleishBlue"))
            .font (Font.system(size: 12, weight: .semibold))
            .padding (.bottom, 2)
                        
                        
        Divider()
            .frame(height: 1)
            .background(Color("purpleishBlue"))
            .padding(.horizontal, 10) }
            .padding(.bottom,0)
HStack{
    VStack (alignment: .leading) {
     HStack{
                        
        Image(systemName: "location.fill")
            .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))
            .font (Font.system(size: 9, weight: .semibold))
                      
        Text ("Share your location")
            .foregroundColor (Color("blackTwo"))
            .font (Font.system(size: 9, weight: .semibold))   }
            .frame(alignment: .leading)
            .padding(.top,0)
            .padding(.bottom,10)

        Text ("I am here to offer:")
            .foregroundColor(Color("purpleishBlue"))
            .font(Font.system(size: 14, weight: .semibold))
            .padding (.bottom, 2)     }
                      
        Spacer()    }
                        
    VStack (alignment: .leading, spacing: 10){
        
        CheckView(title: "Donations")
        CheckView(title: "Information")
        CheckView(title: "Volunteer Hours")
           }
            .padding (.bottom, 5)
    
    VStack {
     HStack{
                                
        Text ("I am here to request:")
            .foregroundColor(Color("purpleishBlue"))
            .font (Font.system(size: 14, weight: .semibold))
            .padding (.bottom, 2)
                            
           Spacer()   }

        CheckViewWithSubText(title: "   Medical Help",subtext:"I have symptoms of COVID-19.")
            .fixedSize(horizontal: false, vertical: true)
                        
        CheckViewWithSubText(title: "Other Help",subtext:"I need assistance getting groceries, medicine, etc. ")   }
                        
                    
    HStack  {
     
    if !self.DisableSignUpButton() {
                        
     NavigationLink (destination: Blank()){SignUpButton (
     backgroundColor: Color ("purpleishBlue"),buttonText: "Complete Profile",foregroundColor: Color ("white"))
        .opacity(self.DisableSignUpButton() ? 0.5 : 1)}   }
    
    if self.DisableSignUpButton() {
                        
    SignUpButton (backgroundColor: Color ("purpleishBlue"),
   buttonText: "Complete Profile",foregroundColor: Color ("white"))
        .opacity(self.DisableSignUpButton() ? 0.5 : 1)   }   }
                    
     Text ("Have an account? Sign in instead")
        .foregroundColor(Color("purpleishBlue"))
        .font (Font.system(size: 13, weight: .semibold))
                }
                .padding(.horizontal,20)
                .padding(.bottom, 50)
                }
                .navigationBarTitle (Text("Join Now . ."), displayMode: .inline)
                .background(Color(#colorLiteral(red: 0.9687533975, green: 0.9724208713, blue: 0.9876253009, alpha: 1)))
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action: { presentation.wrappedValue.dismiss() }) {Image(systemName: "chevron.left")
                .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))            .imageScale(.large)})
                .padding(.top, 50)
                .padding(.bottom, 20)   }}


struct CheckView: View {
    
@State var isChecked:Bool = false
var title:String

func toggle(){isChecked = !isChecked}
    
    var body: some View {
        Button(action: toggle){
            HStack(){
             VStack{
                
                Text(title)
                    .foregroundColor(.black)
                    .padding(.trailing, 90)
                    .font (Font.system(size: 12, weight: .light))
                    .padding(.bottom, 0)

                }
                    .frame(width: 200,alignment: .leading)
                
                VStack{
                    
        Image(systemName: isChecked ? "checkmark.square": "square")
                    .foregroundColor(Color("purpleishBlue"))
                    .font (Font.system(size: 14, weight: .bold))  }
                }
                    .frame(width: 200,alignment: .trailing)    }}}



struct CheckViewWithSubText: View {

@State var isChecked:Bool = false
var title:String
var subtext:String

func toggle(){isChecked = !isChecked}
    
    var body: some View {
        Button(action: toggle){
            
HStack(){
 VStack{
        
    Text(title)
        .foregroundColor(.black)
        .padding(.trailing, 90)
        .font (Font.system(size: 12, weight: .light))
        .padding(.bottom, 0)
                    
    Text(subtext)
        .foregroundColor(.gray)
        .font (Font.system(size: 10, weight: .semibold))
        .fixedSize(horizontal: false, vertical: true)
    
        }
        .frame(width: 200,alignment: .leading)

VStack{
    
    Image(systemName: isChecked ? "checkmark.square": "square")
        .foregroundColor(Color("purpleishBlue"))
        .font (Font.system(size: 14, weight: .bold))    }
            }
            .frame(width: 200, height: 20, alignment: .trailing)
            .padding(.bottom, 15)  }}}


struct CompleteProfileView_Previews: PreviewProvider {
    static var previews: some View { CompleteProfileView() }}
