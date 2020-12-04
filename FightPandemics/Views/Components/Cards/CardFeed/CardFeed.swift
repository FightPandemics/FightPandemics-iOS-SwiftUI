//
//  CardFeed.swift
//  FightPandemics
//
//  Created by Luko on 28/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct CardFeed: View {
    
    // user
    var userName = ""
    var userInitials = ""
    var userLocation = ""
    // post
    var contentTitle = ""
    var contentDescription = ""
    
    init(contentTitle: String,
         contentDescription: String,
         userName: String,
         userInitials: String,
         userLocation: String) {
        
        self.contentTitle = contentTitle
        self.contentDescription = contentDescription
        self.userName = userName
        self.userInitials = userInitials
        self.userLocation = userLocation
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HeaderContainer()
            UserContainer(userName: userName, userInitials: userInitials, userLocation: userLocation)
            TagsContainer()
            ContentContainer(contentTitle: contentTitle, contentDescription: contentDescription)
            SocialContainer()
        }
         .frame(width: .infinity, height: 400, alignment: .center)
    }
}

struct CardFeed_Previews: PreviewProvider {
    static var previews: some View {
        CardFeed(contentTitle: "", contentDescription: "", userName: "", userInitials: "", userLocation: "")
    }
}
