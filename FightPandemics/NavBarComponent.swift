//
//  NavBarComponent.swift
//  FightPandemics
//
//  Created by Luciano Schillagi on 10/9/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

// Abstract: A Navigation Bar Component (Footer)
struct NavBarComponent: View {
    
    var body: some View {
        
        TabView {
            
            Home()
                .tabItem {
                    Image("home-icon")
                    Text("Home")
            }
            
            Search()
                .tabItem {
                    Image("magnifier-icon")
                    Text("Search")
            }
            
            Post()
                .tabItem {
                    Image("plus-icon")
                    Text("Post")
            }
            
            Inbox()
                .tabItem {
                    Image("Inbox-icon")
                    Text("Inbox")
            }

            Profile()
                .tabItem {
                    Image("profile-icon")
                    Text("Profile")
            }
        }
    }
}

// MARK: Previews
struct NavBarComponent_Previews: PreviewProvider {
    static var previews: some View {
        NavBarComponent()
    }
}
