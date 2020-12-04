//
//  CardChatBubble.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct CardChatBubble: View {
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Avatar(userInitials: "XX")
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("User Name").font(.custom("Poppins-Medium", size: 14)).padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque, eros id hendrerit elementum, odio augue efficitur diam, non pellentesque ex libero nec lectus. Integer lorem dolor, varius in nulla eu, pellentesque fermentum orci. Aliquam at quam pulvinar, tristique dui nec, consequat massa.")
                            .font(.custom("WorkSans-Regular", size: 12))
                            .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                           
                    }
                    .frame(width: .infinity, height: 184)
                    .background(FPColor.colorSecondaryOffWhite)
                    .cornerRadius(15)
                    
                    HStack {
                        Text("1w").font(.custom("WorkSans-Regular", size: 11))
                        Text("Like").font(.custom("WorkSans-Regular", size: 11))
                        Text("Replay").font(.custom("WorkSans-Regular", size: 11))
                    }.padding(.top, 5)
                }
                
     
            }
            .padding(20)
                
               
            
    }
        
       
        
        
    }
}

struct CardChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        CardChatBubble()
    }
}
