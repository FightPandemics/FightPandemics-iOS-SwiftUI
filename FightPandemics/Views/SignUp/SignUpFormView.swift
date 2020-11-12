//  SignUpFormView.swift
//  FightPandemics


import SwiftUI

struct SignUpFormView: View {

    @Environment(\.presentationMode) var presentation
    @State var shouldShowMyButton = false
    @State var username: String = ""
    @State var password: String = ""
    @State var reEnterPassword: String = ""
    let storedUsername = "Myusername@.COM"
    let storedPassword = "Mypassword"
   
    func authenticationDidFail() -> Bool {
        if  !username.contains("@") && username.count > 8
        { return true}
        
        if !username.contains("(.)") && username.count > 8
        
        //https://stackoverflow.com/questions/30918732/how-to-determine-which-textfield-is-active-swift
        {return true}
        return false
    }
    
    func checkDisableSignUpButton() -> Bool{
        if username.isEmpty || password.isEmpty || reEnterPassword.isEmpty
        
        { return true}
        return false}
    
    func checkPassVersusReEnter() -> Bool{
        if password != reEnterPassword && !reEnterPassword.isEmpty
        {return true }
        return false
    }
    
    func authenticationDidSucceed() -> Bool{
    if username == storedUsername && password  == storedPassword && reEnterPassword == storedPassword
    {return true}
        return true}
   
    var body: some View {
        
 ZStack{Color( #colorLiteral(red: 0.9624996781, green: 0.9666767716, blue: 0.997005403, alpha: 1))
   VStack {

        Text("Myusername@.COM + Mypassword")
           .font (Font.system(size: 12, weight: .semibold))
                    
   VStack {
            
        if !authenticationDidFail() {
                   
        TextField("", text: $username)
            .foregroundColor(Color("purpleishBlue"))
            .modifier(PlaceholderStyle(showPlaceHolder: username.isEmpty, placeholder: "E-mail"))
            .foregroundColor(Color("purpleishBlue"))
            .font(Font.system(size: 12, weight: .semibold))  }
                        
        if authenticationDidFail() {
                            
        TextField("", text: $username)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)))
            .modifier(PlaceholderStyle(showPlaceHolder: username.isEmpty, placeholder: "E-mail"))
            .foregroundColor(Color("purpleishBlue"))
                           
        Text("Please enter a valid e-mail address.").offset(y: 22)
            .foregroundColor(.red)
            .font (Font.system(size: 9, weight: .semibold))   }
                   
         if !authenticationDidFail() {
                            
        Divider()
            .frame(height: 1)
            .background(Color("purpleishBlue"))
            .padding(.horizontal, 30)
            .padding(.bottom, 10)  }
    
         if authenticationDidFail() {
                           
            Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)))
             .padding(.bottom, 10)  }
                        
HStack {
          SecureField("", text: $password)
             .foregroundColor(Color("purpleishBlue"))
             .modifier(PlaceholderStyle(showPlaceHolder: password.isEmpty, placeholder: "Password"))
             .foregroundColor(Color("purpleishBlue"))
             .font(Font.system(size: 12, weight: .semibold))
                        
    Spacer()
          
          Image(systemName: "eye.fill").foregroundColor(Color("purpleishBlue")).opacity(0.5)}
                       
          Divider()
             .frame(height: 1)
             .padding(.horizontal, 30)
             .background(Color("purpleishBlue"))
             .padding(.bottom, 10)
                        
    HStack{
            
           SecureField("", text: $reEnterPassword)
             .foregroundColor(Color("purpleishBlue"))
             .modifier(PlaceholderStyle(showPlaceHolder: reEnterPassword.isEmpty, placeholder: "Re-enter Password"))
             .foregroundColor(Color("purpleishBlue"))
             .font(Font.system(size: 12, weight: .semibold))
                            
        if checkPassVersusReEnter() {
            
            Text("Passwords must match.").offset(y: 4)
             .foregroundColor(.red)}
                           
            Spacer()
            
            Image(systemName: "eye.fill").foregroundColor(Color("purpleishBlue"))
                    .opacity(0.5)
                            }
            Divider()
              .frame(height: 1)
              .padding(.horizontal, 30)
              .background(Color("purpleishBlue"))
              .padding(.bottom, 10)
    
            Text ("By signing up, I agreeto the Privacy Policy and Terms and Conditions")
               .foregroundColor (Color("blackTwo"))
               .font (Font.system(size: 10, weight: .semibold))
               .padding (.bottom, 20)
               .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding (.bottom, 20)
                    
   HStack  {
            if !self.checkDisableSignUpButton() && !self.authenticationDidSucceed() {
                        
    NavigationLink (destination: SignUpFormView()){SignUpButton(
    backgroundColor: Color ("purpleishBlue"),buttonText: "Join Now",foregroundColor: Color ("white"))
        .opacity(self.checkDisableSignUpButton() ? 0.5 : 1)}   }
    
            if !self.checkDisableSignUpButton() && self.authenticationDidSucceed() {
                        
    NavigationLink(destination:CompleteProfileView()){SignUpButton(backgroundColor: Color("purpleishBlue"),buttonText: "Join Now",foregroundColor: Color ("white"))
        .opacity(self.checkDisableSignUpButton() ? 0.5 : 1)}   }
                        
            if self.checkDisableSignUpButton() {
                
SignUpButton (backgroundColor: Color ("purpleishBlue"),buttonText: "Join Now",foregroundColor: Color ("white"))
    .opacity(self.checkDisableSignUpButton() ? 0.5 : 1)    }   }
                    
           Text ("Have an account? Sign in instead.")
                .foregroundColor(Color("purpleishBlue"))
                 .font (Font.system(size: 12, weight: .semibold))
                }
                .padding(.top, 20)
                .padding(.horizontal,20)
                .padding(.bottom, 50)
                }
                .navigationBarTitle (Text("Join Now"), displayMode: .inline)
                .background(Color(#colorLiteral(red: 0.9687533975, green: 0.9724208713, blue: 0.9876253009, alpha: 1)))
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action: { presentation.wrappedValue.dismiss() }) {Image(systemName: "chevron.left")
                    .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))
                    .imageScale(.large)})   }}


public struct PlaceholderStyle: ViewModifier {
    var showPlaceHolder: Bool
    var placeholder: String

    public func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if showPlaceHolder {
                Text(placeholder)
                    .padding(.horizontal, 15)}
            content
                    .foregroundColor(Color.white)
                    .padding(5.0)
        }}}

struct SignUpFormView_Previews: PreviewProvider {
    static var previews:
        some View
    {
        SignUpFormView() }}
