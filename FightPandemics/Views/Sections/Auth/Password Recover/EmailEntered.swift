//
//  EmailEntered.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct EmailEntered: View {
    
    func signIn() {}
    
    var body: some View {
        VStack {
            Text("An e-mail has been sent with further instructions. Please check your inbox.")
                .multilineTextAlignment(.center)
            Button(action: signIn) {
                Text("Back to Sign In")
            }.padding(.top, 15)
        }
    }
}

struct EmailEntered_Previews: PreviewProvider {
    static var previews: some View {
        EmailEntered()
    }
}
