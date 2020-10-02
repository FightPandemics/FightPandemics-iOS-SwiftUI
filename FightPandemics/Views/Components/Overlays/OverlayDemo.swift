//
//  OverlayDemo.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/24/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct OverlayDemo: View {
    @State private var showOverlay = true
    @State private var dragTranslate = CGSize.zero
    
    var body: some View {
        ZStack {
            Button(action: {
                self.showOverlay.toggle()
            }) {
                Text("Show Overlay")
                    .font(.iosNativeP114Px)
            }
            GeometryReader { geo in
                Overlay(viewModel: OverlayViewModel())
                    .offset(x: 0, y: self.showOverlay ? geo.size.height - 358 + self.dragTranslate.height :  geo.size.height + 358)
                    .animation(.spring())
                    .gesture(
                        DragGesture()
                            .onChanged({ (value) in
                                if value.translation.height > 0 {
                                    self.dragTranslate = value.translation
                                }
                            })
                            .onEnded({ (value) in
                                if value.translation.height > 120.0 {
                                    self.showOverlay = false
                                    self.dragTranslate = CGSize.zero
                                } else {
                                    self.dragTranslate = .zero
                                }
                            })
                    )
            }
            .edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct OverlayDemo_Previews: PreviewProvider {
    static var previews: some View {
        OverlayDemo()
    }
}
