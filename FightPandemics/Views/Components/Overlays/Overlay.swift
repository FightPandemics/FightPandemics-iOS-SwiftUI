//
//  Overlay.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/24/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct Overlay: View {
    @ObservedObject var viewModel: OverlayViewModel
    
    var body: some View {
        VStack() {
            Capsule()
                .foregroundColor(Color("paleGreyTwo"))
                .frame(width: 116, height: 3.5, alignment: .center)
            Spacer().frame(height: 16.5)
            Text("Title")
                .font(.iosNativeH216Px)
            Spacer().frame(height: 20)
            Text("This is a paragraph.")
                .font(.iosNativeP212Px)
            Spacer().frame(height: 20)
            VStack(spacing: 10) {
                ForEach(0..<viewModel.buttonStatus.count) { i in
                    SelectionSheetButton(title: viewModel.buttonStatus[i].title, highlighted: viewModel.buttonStatus[i].highlighted)
                }
            }
        }.frame(width: 375, height: 358)
        .background(
            Color.white
                .shadow(color: Color.black.opacity(0.08), radius: 1, x: 0, y: -2)
        )
        .cornerRadius(10)
    }
    
}

struct Overlay_Previews: PreviewProvider {
    static var previews: some View {
        Overlay(viewModel: OverlayViewModel())
    }
}
