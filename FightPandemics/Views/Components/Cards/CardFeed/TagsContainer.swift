//
//  TagsContainer.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct TagsContainer: View {
    
    func someAction() {}
    var body: some View {
        HStack {
            Button(action: someAction) {
                Tag(title: "Groceries")
            }
            Button(action: someAction) {
                Tag(title: "Groceries")
            }
            Button(action: someAction) {
                Tag(title: "Groceries")
            }
        }
    }
}

struct TagsContainer_Previews: PreviewProvider {
    static var previews: some View {
        TagsContainer()
    }
}
