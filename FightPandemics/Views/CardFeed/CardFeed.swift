//
//  CardFeed.swift
//  FightPandemics
//
//  Created by Luko on 19/11/2020.
//  Copyright © 2020 FightPandemics. All rights reserved.
//

// https://app.zeplin.io/project/5ecaeec0e0303147915effa8/screen/5ecdce36e0303147916c2069

import SwiftUI

struct CardFeed: View {
    
    var body: some View {
        VStack {
            HeaderContainer()
            UserContainer()
            TagsContainer()
            ContentContainer()
            SocialContainer()
        }.padding(20)
    }
}

// MARK: Previews
struct CardFeed_Previews: PreviewProvider {
    static var previews: some View {
        CardFeed()
    }
}
