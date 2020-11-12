//
//  ResetSent.swift
//  FightPandemics
//

import SwiftUI

struct ResetSent: View {
    @Environment(\.presentationMode) var presentation
    @State var email: String = ""

    func noEmailEntered() -> Bool {if email.isEmpty
    { return true }

    return false  }

    var body: some View {

        ZStack { Color(#colorLiteral(red: 0.9624996781, green: 0.9666767716, blue: 0.997005403, alpha: 1))

            VStack {

                Spacer()

                Text("An e-mail has been sent with further instructions. Please check your inbox.")
                    .font(.system(size: 10))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)))
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom, 40)

                NavigationLink(destination: SignIn()) {
                    Text("Back to Sign In")}
                    .font(.system(size: 12))
                    .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))

                Spacer()
                Spacer()

            }
            .padding(.top, 20)
            .padding(.horizontal, 10) .padding(.bottom, 40)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action:{presentation.wrappedValue.dismiss()}) {Image(systemName: "chevron.left")
                        .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))
                        .imageScale(.large)
                
            })
            .navigationTitle("Reset Password")}}


    struct ResetSent_Preview: PreviewProvider {
    static var previews: some View {

        ResetSent()}}






