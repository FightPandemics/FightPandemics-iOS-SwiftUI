//  TabControllerView.swift
//  FightPandemics

import SwiftUI
struct TabControllerView : View {
    
    @State var showActionSheet : Bool = false
    @State private var selectedTab = 4
    
    var body : some View {
        VStack {
            ZStack{Color( #colorLiteral(red: 0.9624996781, green: 0.9666767716, blue: 0.997005403, alpha: 1))

                GeometryReader {
                    geometry in TabView (selection: $selectedTab)
                    { Home ()
                      .tabItem {Text (self.selectedTab != 0 ? "Home" : "●") // 🔵
                                Image (systemName: "house.fill")}
                        .tag (0)
                        
                        Search ()
                        .tabItem {Text (self.selectedTab != 1 ? "Search" : "●")
                                  Image (systemName: "magnifyingglass")}
                        .tag (1)
                        
                        // Post ()
                        .tabItem {Text(" ")}
                        Text ("plus")
                        .tag (2)
                        
                        Inbox ()
                        .tabItem {Text (self.selectedTab != 3 ? "Inbox" : "●")
                                  Image (systemName: "tray")}
                        .tag (3)

                        ProfileSignedOutView ()
                        .tabItem {Text (self.selectedTab != 4 ? "Profile" : "●")
                                  Image (systemName: "person.crop.circle")}
                        .tag (4)
                    }
                    Image (systemName: "plus.circle")
                    .resizable ()
                    .frame (width: 40, height: 40)
                    .offset (x : geometry.size.width / 2 - 20,  y : geometry.size.height - 45)
                    .foregroundColor (Color("purpleishBlue"))
                    .onTapGesture {self.showActionSheet.toggle()}
                    .actionSheet (isPresented: $showActionSheet)
                    {ActionSheet(title: Text("some actions"))}}}}}}


struct TabControllerView_Previews : PreviewProvider {
    static var previews : some View {  TabControllerView()  }}

