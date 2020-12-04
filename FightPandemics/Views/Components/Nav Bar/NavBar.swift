//
//  NavBar.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

// https://www.appcoda.com/swiftui-tabview/

import SwiftUI

struct NavBar: View {
    
    @State private var selection = 0
    @State private var plusButtonTapped = false
    
    func someAction() {
        plusButtonTapped = false
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            
            // Home Section
            CardsFeed()
                .tabItem {
                    Image("home-icon")
                    Text("Home")
                }
                .tag(0)
         
            // Search Results Section
            CardSearchResultsArray()
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image("magnifier-icon")
                    Text("Search")
                }
                .tag(1)
            
            // Plus Section
            // https://medium.com/@andreamiotz/swiftui-with-custom-tab-bar-item-action-6d1e3588369d
            Text("Plus")
                .tabItem {
                    Image("plus-circle-solid")
                        .frame(width: 36,
                               height: 36,
                               alignment: .center)
                }
                .tag(2)
                .onAppear {
                    self.plusButtonTapped = true
                  }
                

            // Inbox Section
            Text("Inbox")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image("inbox-icon")
                    Text("Inbox")
                }
                .tag(3)
         
            // Profile Section
            Text("Profile")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image("profile-icon")
                    Text("Profile")
                }
                .tag(4)
        }
//        .onAppear() {
//            UITabBar.appearance().backgroundColor = .white
//        }
//        .sheet(isPresented: $plusButtonTapped, content: {
//            OverlayOne()
//        })
        .sheet(isPresented: $plusButtonTapped, onDismiss: someAction, content:  {
            OverlayOne()
        })

    }
}



// MARK: Previews
struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
