//
//  SearchResultViewModel.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 10/1/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

class SearchResultViewModel: ObservableObject {
    @Published var title = "This is a title message."
    @Published var tagText = "Label"
    @Published var bodyText = "Max 3 lines for the preview of the post. Max 3 line for the preview of the post. Max 3 linse for the preview of the post. Max 3 lines"
    @Published var lineLimit: Int? = 3
}
