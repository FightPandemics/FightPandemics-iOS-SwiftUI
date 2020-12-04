//
//  In-App-Signed-Up.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct InAppSignedUp: View {
    
    func privatePolicy() {}
    func termsAndConditions() {}
    func signIn() {}
    
    var body: some View {
        VStack {
            InputTextField(placeholder: "Email")
            InputTextField(placeholder: "Password", withIcon: true)
            InputTextField(placeholder: "Re-enter password", withIcon: true)
            HStack {
                Text("By signing up, I agree to the")
                Button(action: privatePolicy) {
                    Text("Private Policy")
                    
                }
                Text("and")
                Button(action: termsAndConditions) {
                    Text("Terms and Conditions")
                       
                }
            }
            Spacer()
                PillButton(title: "Join Now")
            HStack {
                Text("Have an account?")
                Button(action: signIn) {
                    Text("Sign in")
                }
                Text("instead")

                
            }
        }.padding(20)
    }
}

struct InAppSignedUp_Previews: PreviewProvider {
    static var previews: some View {
        InAppSignedUp()
    }
}
