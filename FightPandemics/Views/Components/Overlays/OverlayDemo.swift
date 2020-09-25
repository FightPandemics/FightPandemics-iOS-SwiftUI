//
//  OverlayDemo.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/24/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct OverlayDemo: View {
    @State var showOverlay = false
    @State var dragTranslate = CGSize.zero
    let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
    var body: some View {
        ZStack {
            Button(action: {
                showOverlay.toggle()
            }) {
                Text("Show Overlay")
                    .font(.iosNativeP114Px)
            }
            GeometryReader { geo in
                Overlay()
                    .offset(x: 0, y: showOverlay ? geo.size.height - 358 + dragTranslate.height :  geo.size.height + 358)
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
                                    dragTranslate = CGSize.zero
                                } else {
                                    self.dragTranslate = .zero
                                }
                            })
                    )
            }.edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct OverlayDemo_Previews: PreviewProvider {
    static var previews: some View {
        OverlayDemo()
    }
}
