//
//  UserContainer.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct UserContainer: View {
    
    var userName = ""
    var userInitials = ""
    var userLocation = ""
    
    init(userName: String, userInitials: String, userLocation: String) {
        
        self.userName = userName
        self.userInitials = userInitials
        self.userLocation = userLocation
    }
    
    var body: some View {
            // Avatar + User Name + Location
            HStack {

                // Avatar
                Avatar(userInitials: userInitials)

                // User Name + Location
                VStack(alignment: .leading) {

                    // User Name
                    Text(userName)
                        .font(.custom("Poppins-Medium", size: 14))

                    // Point + Location
                    HStack {
                        Image(systemName: "circle.fill")
                                .font(.system(size: 6))
                            .foregroundColor(FPColor.purpleishBlue)
                        Text(userLocation).font(.custom("WorkSans-Regular", size: 11))
                            .foregroundColor(FPColor.brownGrey)
                    }
                }
                Spacer()
            }
        }
}

struct UserContainer_Previews: PreviewProvider {
    static var previews: some View {
        UserContainer(userName: "", userInitials: "", userLocation: "")
    }
}
