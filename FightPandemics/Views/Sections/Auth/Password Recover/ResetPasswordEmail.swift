//
//  ResetPasswordEmail.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct ResetPasswordEmail: View {
    
    var body: some View {
        VStack {
            InputTextField(placeholder: "E-mail")
            PillButton(title: "Resend", opacity: 0.4)
            Text("We'll send you an email with a recovery link.")
                .padding(.top, 15)
            Spacer()
        }.padding(20)
    }
}

struct ResetPasswordEmail_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordEmail()
    }
}
