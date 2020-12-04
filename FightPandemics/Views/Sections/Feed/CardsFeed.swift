    //
//  CardsFeed.swift
//  FightPandemics
//
//  Created by Luko on 02/12/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct CardsFeed: View {
    
    @ObservedObject private var viewModel = UserViewModel()// Publisher 📝
    
    var body: some View {
        List(viewModel.users) { user in
            CardFeed(contentTitle: user.posts.title,
                     contentDescription: user.posts.text,
                     userName: user.name,
                     userInitials: user.initials,
                     userLocation: user.location)
        }
    }
}


struct CardsFeed_Previews: PreviewProvider {
    static var previews: some View {
        CardsFeed()
    }
}
