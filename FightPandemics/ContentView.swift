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
                //Text("Content of first view")
                Home()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                }
                
                //Text("Content of second view")
                Search()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                }
                
                //Text("Content of third view")
                Post()
                    .tabItem {
                        Image(systemName: "plus.circle")
                        Text("Post")
                }
                
                //Text("Content of third view")
                Inbox()
                    .tabItem {
                        Image(systemName: "tray.and.arrow.down")
                        Text("Inbox")
                }
                
                //Text("Content of fourth view")
                Profile()
                    .tabItem {
                        Image(systemName: "person.circle")
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
