//
//  Organization.swift
//  FightPandemics
//
//  Created by Luko on 01/12/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

// auth
// feedback
// geo
// organizations
// posts
// users
// sendgrid
// version

struct Organization: Identifiable {
    var id: String
    var name: String
    var comments: [String]
    var posts: [Post]
    /// etc
}

