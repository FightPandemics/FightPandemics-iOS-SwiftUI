//  ProfileSignedOutView.swift
//  FightPandemics
//
//  Created by newuser on 10/31/20.
//
import SwiftUI
struct ProfileSignedOutView: View {

    @State var didTapOnAccountSettings = false
    let accentColor = Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1))
    var body: some View {

        NavigationView {
            
            ZStack{Color( #colorLiteral(red: 0.9624996781, green: 0.9666767716, blue: 0.997005403, alpha: 1))
                VStack {
                    HStack {
                        VStack {
                            
         Image ("SocialMedia1")
                            
         Text ("You are not signed in")
         .padding (.bottom, 2)
                            
         Text ("Sign up or log in to see your profile.")
         .foregroundColor (Color("blackTwo"))
         .font (Font.system(size: 12, weight: .semibold))
         .padding ()
                           
        VStack {
        HStack {
            
    NavigationLink (destination: InAppSignIn1View())
{LogInButton (backgroundColor: Color (.white),buttonText: "Login",
foregroundColor: Color ("purpleishBlue"))
        }
        .buttonStyle (PlainButtonStyle())
        .padding (.bottom, 5)

    NavigationLink (destination: InAppSignUpView())
{SignUpButton (backgroundColor: Color("purpleishBlue"),buttonText: "Sign Up", foregroundColor: Color (.white))
        }
        .buttonStyle (PlainButtonStyle())
        .padding (.bottom, 5)
        }
        .padding () }}}}
        }
        .toolbar {ToolbarItem (placement: .navigationBarTrailing)
        { HStack {Button (action: { didTapOnAccountSettings = true }){ Image (systemName: "gearshape")
            .resizable ()
            .frame (width: UIScreen.main.bounds.width / 10.71,height: UIScreen.main.bounds.width / 10.71)
            .padding (.trailing, 20)
                    }
            .sheet (isPresented: $didTapOnAccountSettings,
                                content: { ProfileSignedIn()}) }}
        
        }
         .navigationBarTitle (Text("Profile"), displayMode:.inline) }}}



struct ProfileSignedOutView_Previews: PreviewProvider {
    static var previews: some View { ProfileSignedOutView() }}

