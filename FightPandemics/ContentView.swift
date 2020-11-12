//
//  ContentView.swift
//  FightPandemics
//
<<<<<<< HEAD
=======
//  Created by Scott on 9/1/20.
//  Copyright © 2020 Scott. All rights reserved.
//
>>>>>>> a40a1a2ba53487f58584592f57bccc99f026086a

import SwiftUI

struct ContentView: View {
<<<<<<< HEAD
    init() {UINavigationBar
        .appearance()
        .titleTextAttributes = [.font: UIFont(name: "Verdana", size: 16)!]   }

    var body: some View {
   
 VStack {

        TabControllerView()
        }
        .accentColor(Color( #colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))   }}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()  }}
=======
    
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
>>>>>>> a40a1a2ba53487f58584592f57bccc99f026086a
