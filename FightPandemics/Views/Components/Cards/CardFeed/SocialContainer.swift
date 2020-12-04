//
//  SocialContainer.swift
//  FightPandemics
//
//  Created by Luko on 29/11/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct SocialContainer: View {
    
    // Likes
    @State private var amountOfLikes = 0
    @State private var isHeartBtnTapped = false
    
    // Comments
    @State private var amountOfComments = 0
    @State private var isCommentsBtnTapped = false
    
    // Struct Methods
    func heartButtonTapped() {
        amountOfLikes += 1
        isHeartBtnTapped = true
    }
    
    func commentsButtonTapped() {
        amountOfComments += 1
        isCommentsBtnTapped = true
    }
    
    func shareButtonTapped() {
        // This is an example...
        guard let data = URL(string: "https://www.zoho.com") else { return }
        let av = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
    
    var body: some View {
    
       // Social Media
       HStack {
        
            // Likes
            HStack {
                    Button(action: heartButtonTapped) {
                        
                        if !isHeartBtnTapped {
                            Image("heart-icon")
                        } else {
                            Image("heart-filled-icon")
                        }
                    }
                    Text(String(amountOfLikes))
                        .font(.custom("WorkSans-Regular", size: 12))
                        .foregroundColor(FPColor.brownGrey)
                }.padding(.trailing, 14)
        
            // Comments
            HStack {
                Button(action: commentsButtonTapped) {
                    
                    if !isCommentsBtnTapped {
                        Image("msg-icon")
                    } else {
                        Image("msg-filled-icon")
                    }
                }
                Text(String(amountOfComments))
                    .font(.custom("WorkSans-Regular", size: 12))
                    .foregroundColor(FPColor.brownGrey)
            }.padding(.trailing, 14)

            // Share
            HStack {
                Button(action: shareButtonTapped) {
                    Image("share-icon")
                }
            }.padding(.trailing, 14)
        
            Spacer()
       }
    }
}

// MARK: Previews
struct SocialContainer_Previews: PreviewProvider {
    static var previews: some View {
        SocialContainer()
    }
}
