//
//  PostUserComment.swift
//  FightPandemics
//
//  Created by Luko on 23/11/2020.
//  Copyright © 2020 FightPandemics. All rights reserved.
//

import SwiftUI

struct PostUserComment: View {
    
    var body: some View {
        
        HStack(alignment: .top) {
            
            Avatar().padding(.top, 7)
            
            // User Name + Comment Text
            VStack(alignment: .leading) {
                Text("Victor Maragiaglio")
                    .font(.custom("Poppins-Medium", size: 14))
                    .padding(.top, 16)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque, eros id hendrerit elementum, odio augue efficitur diam, non pellentesque ex libero nec lectus. Integer lorem dolor, varius in nulla eu, pellentesque fermentum orci. Aliquam at quam pulvinar, tristique dui nec, consequat massa.")
                    .font(.custom("WorkSans-Regular", size: 12))
                    .padding(.leading, 16)
                    .padding(.top, 4)
                    .padding(.bottom, 16)
                    .padding(.trailing, 16)
                
            }
            .background(FPColor.colorSecondaryOffWhite)
            .cornerRadius(15)
            
        }
    }
}

struct PostUserComment_Previews: PreviewProvider {
    static var previews: some View {
        PostUserComment()
    }
}
