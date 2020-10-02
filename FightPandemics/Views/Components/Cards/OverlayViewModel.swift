//
//  OverlayViewModel.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 10/1/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

struct OverlayButtonInfo {
    let title: String
    let highlighted: Bool
}


class OverlayViewModel: ObservableObject {
    @Published var buttonStatus = [
        OverlayButtonInfo(title: "Label 1", highlighted: false),
        OverlayButtonInfo(title: "Label 2", highlighted: false),
        OverlayButtonInfo(title: "Label 3", highlighted: false),
        OverlayButtonInfo(title: "Label 4", highlighted: true)
    ]
}
