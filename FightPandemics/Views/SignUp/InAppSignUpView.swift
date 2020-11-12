// in-app-sign-up Sign Up
import SwiftUI

struct InAppSignUpView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {

    
            
        ZStack{Color( #colorLiteral(red: 0.9624996781, green: 0.9666767716, blue: 0.997005403, alpha: 1))
            VStack(alignment: .center, spacing: 20){
                RoundRectangleButton(backgroundColor: Color.black, foregroundColor: Color.white, image: "Apple", buttonText: "Continue to Apple")
                    .padding(.bottom, 5)

                RoundRectangleButton(backgroundColor: Color.white, foregroundColor: Color("brownGrey"), image: "Google", buttonText: "Continue to Google")
                    .padding(.bottom, 5)
                
                RoundRectangleButton(backgroundColor: Color("Facebook Blue"),foregroundColor: Color.white, image: "Facebook", buttonText: "Continue to Facebook")
                    .padding(.bottom, 5)

                RoundRectangleButton(backgroundColor: Color("LinkedIn Blue"),foregroundColor: Color.white, image: "LinkedIn", buttonText: "Continue to LinkedIn")
                    .padding(.bottom, 5)
              
                Text("By signing up, I agree to the Privacy Policy and Terms and Conditions")
                    .font(.system(size: 10))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color(#colorLiteral(red: 0.5920000076, green: 0.5920000076, blue: 0.5920000076, alpha: 1)))
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()

NavigationLink (destination:SignUpFormView()){SignUpButton(backgroundColor: Color ("purpleishBlue"),buttonText: "Sign Up With Email",foregroundColor: Color (.white))
                    }
                    .buttonStyle (PlainButtonStyle())
                    .padding (.bottom,5)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top,20)
                    .padding(.horizontal,10)
                    .padding(.bottom,50)
                    }
                    .navigationTitle("Join Now")
                    .navigationBarBackButtonHidden(true)
                    .navigationBarItems(leading: Button(action: { presentation.wrappedValue.dismiss() }) {Image(systemName: "chevron.left")
                        .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))
                        .imageScale(.large)})   }}


struct InAppSignUpView_Previews: PreviewProvider {
    static var previews: some View {
            InAppSignUpView()  }}

