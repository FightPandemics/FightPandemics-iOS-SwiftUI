//  ProfileSignedOutView.swift
//  FightPandemics
//
//  Created by newuser on 10/31/20.
//  Copyright © 2020 Scott. All rights reserved.
//
import SwiftUI
struct Success: View {



    init() {
        

        UINavigationBar.appearance().titleTextAttributes = [.font: UIFont(name: "Verdana", size: 16)!]
        
    }

    var body: some View {






        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color("paleGreyTwo"))
                VStack { 
                    HStack {

                        VStack {
                            
                            Text ("Success")
                                .padding (.bottom, 2)
                            
                            
                        }

                    }

                }
                
            }
               
                .navigationBarTitle (Text("Success"), displayMode: .inline)

        }
        // VStack


    }


    // HStack
    //  TabControllerView()
}
// NavigationView
// body
// ProfileSignedOutView
struct idky_Previews: PreviewProvider {
    static var previews: some View { Success() }
    // previews
}
// ProfileSignedOutView_Previews

