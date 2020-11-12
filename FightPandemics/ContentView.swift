//
//  ContentView.swift
//  FightPandemics
//

import SwiftUI

struct ContentView: View {
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
