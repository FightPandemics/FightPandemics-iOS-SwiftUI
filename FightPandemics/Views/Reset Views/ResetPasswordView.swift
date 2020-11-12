//
//  ResetPasswordView.swift
//  FightPandemics
// ResetPasswordView
import SwiftUI

struct ResetPasswordView: View {
    @Environment(\.presentationMode) var presentation
    @State var email : String = ""
    
    func noEmailEntered() -> Bool {if email.isEmpty
        {return true}
        
        return false}
    
    var body: some View {

            ZStack{Color( #colorLiteral(red: 0.9624996781, green: 0.9666767716, blue: 0.997005403, alpha: 1))

            VStack {
           
                Spacer()

                TextField("", text: $email)
                    .foregroundColor(Color("purpleishBlue"))
                    .modifier(PlaceholderStyle(showPlaceHolder:email.isEmpty,placeholder:"E-mail"))
                        .foregroundColor(Color("purpleishBlue"))
                        .font (Font.system(size: 12, weight: .semibold))
                        .padding (.bottom, 0)
                    
                Divider()
                 .frame(height: 1)
                 .background(Color("purpleishBlue"))
                    .padding(.horizontal, 10)
                    .padding (.bottom, 30)

                HStack  {
                    
                    if !self.noEmailEntered() {
                    
                    NavigationLink (destination: ResetSent()){SignUpButton (
                    backgroundColor: Color ("purpleishBlue"),
                    buttonText: "Resend",
                    foregroundColor: Color ("white"))
                    .opacity(self.noEmailEntered() ? 0.5 : 1)}
                                                }
                    
                    if self.noEmailEntered() {
                    
                    SignUpButton (
                    backgroundColor: Color ("purpleishBlue"),
                    buttonText: "Resend",
                    foregroundColor: Color ("white"))
                    .opacity(self.noEmailEntered() ? 0.5 : 1)
                                                }}
                
                Text("We'll send you an e-mail with a recovery link.")
                    .font(.system(size: 10))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)))
                    .fixedSize(horizontal: false, vertical: true)
            
                Spacer()
                Spacer()
                          }
                    .padding(.horizontal, 10)
                    .padding(.bottom, 40)
                    .padding(.top,20)
                        }
                    .navigationBarBackButtonHidden(true)
                    .navigationBarItems(leading:Button(action:{presentation.wrappedValue.dismiss() }) {Image(systemName: "chevron.left")
                            .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))
                            .imageScale(.large)})
                    .navigationTitle("Reset Password")}}

        struct ResetPasswordView_Preview: PreviewProvider {
            static var previews: some View {
                ResetPasswordView()}}





