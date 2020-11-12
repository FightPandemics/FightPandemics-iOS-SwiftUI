//
//  SignIn.swift
//  FightPandemics
//
//  Created by newuser on 11/11/20.

import SwiftUI

struct SignIn: View {
    
    @Environment(\.presentationMode) var presentation
    @State var email : String = ""
    @State var password: String = ""
    let storedUsername = "user@.com"
    let storedPassword = "pass123"
        
    func noEmailEntered() -> Bool {
        if email.isEmpty || password.isEmpty {return true}
        return false }
    
   func authenticationDidSucceed() -> Bool{
    if email == storedUsername && password  == storedPassword
        {return false}
        return true}
    
    func authenticationDidFail() -> Bool {
        if  !password.isEmpty  && !email.contains("@")
        {return true}
       if  !password.isEmpty && !email.contains("(.)")
        {return true}
        //https://stackoverflow.com/questions/30918732/how-to-determine-which-textfield-is-active-swift
        return false}
    
    
    var body: some View {

            ZStack{Color( #colorLiteral(red: 0.9624996781, green: 0.9666767716, blue: 0.997005403, alpha: 1))
            VStack {
                
                Text("User@.com + pass123")
                   .font (Font.system(size: 12, weight: .semibold))

                if !authenticationDidFail() {

                TextField("", text: $email)
                    .foregroundColor(Color("purpleishBlue"))
                    .modifier(PlaceholderStyle(showPlaceHolder: email.isEmpty, placeholder: "E-mail"))
                    .foregroundColor(Color("purpleishBlue"))
                    .font (Font.system(size: 12, weight: .semibold))
                    .padding(.horizontal, 30)
                   .padding (.bottom, 0) }
                
               if authenticationDidFail() {
                
                Text("Please enter a valid email").offset(y: 14)
                   .foregroundColor(.red)
             
                TextField("", text: $email)
                    .foregroundColor(Color("purpleishBlue"))
                    .modifier(PlaceholderStyle(showPlaceHolder: email.isEmpty, placeholder: "E-mail"))
                    .foregroundColor(Color("purpleishBlue"))
                    .font (Font.system(size: 12, weight: .semibold))
                    .padding(.horizontal, 30)
                   .padding (.bottom, 0) }
            
                if !authenticationDidFail() {
            
                Divider()
                    .frame(height: 1)
                    .background(Color("purpleishBlue"))
                    .padding(.horizontal, 30)
                    .padding(.bottom, 10) }
                
                if authenticationDidFail() {
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)))
                        .padding(.horizontal, 30)
                        .padding(.bottom, 10) }
                
        HStack {
                    SecureField("", text: $password)
                        .foregroundColor(Color("purpleishBlue"))
                        .modifier(PlaceholderStyle(showPlaceHolder: password.isEmpty, placeholder: "Password"))
                        .foregroundColor(Color("purpleishBlue"))
                        .font(Font.system(size: 12, weight: .semibold))
            
                    Spacer()
            
                    Image(systemName: "eye.fill").foregroundColor(Color("purpleishBlue")).opacity(0.5)}
                        .padding(.horizontal, 30)

               
                    Divider()
                        .frame(height: 1)
                        .background(Color("purpleishBlue"))
                        .padding(.horizontal, 30)
                        .padding(.bottom, 10)

        HStack {
                    if !self.noEmailEntered() {
                    
            NavigationLink (destination: Success()){SignUpButton (backgroundColor: Color ("purpleishBlue"),
                buttonText: "Sign In",
                foregroundColor: Color ("white"))
                    .opacity(self.noEmailEntered() ? 0.5 : 1)} }
                    
                    if self.noEmailEntered() {
                    
            SignUpButton (backgroundColor: Color ("purpleishBlue"),
            buttonText: "Sign In",foregroundColor: Color ("white"))
            .opacity(self.noEmailEntered() ? 0.5 : 1)   }   }
                
              
            NavigationLink(destination: ResetPasswordView()) {

                Text("Forgot Password?")}
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 12))
                    .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))
                    .fixedSize(horizontal: false, vertical: true)
                
        VStack {
               NavigationLink(destination: SignUpFormView()) {
                       
                Text("Don't have an account? Join now instead.")}  .font(.system(size: 12))
                    .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))
                    .padding(.top,10) }

            }
            .padding(.top,20)
            .padding(.horizontal, 10)
            .padding(.bottom, 40)
        }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: { presentation.wrappedValue.dismiss() }) {Image(systemName: "chevron.left")
                .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))
                .imageScale(.large)})
            .navigationTitle("Sign In")}}


struct SignIn_Preview: PreviewProvider {
    static var previews: some View {
        SignIn()  }}





