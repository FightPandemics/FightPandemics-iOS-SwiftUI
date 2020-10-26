//
//  ContentView.swift
//  FightPandemics
//
//  Created by Scott on 9/1/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            
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
                        Image(systemName: "plus.circle")
                        Text("Post")
                }
                
                Inbox()
                    .tabItem {
                        Image("inbox-icon")
                        Text("Inbox")
                }
                
                Profile()
                    .tabItem {
                        Image("profile-icon")
                        Text("Profile")
                }
            }
            .navigationBarItems(leading: Image("nav-logo").padding(-5), trailing: Image(systemName: "location"))
            .font(.title)
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
