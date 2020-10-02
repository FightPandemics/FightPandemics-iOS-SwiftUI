//
//  SearchResult.swift
//  FightPandemics
//
//  Created by Zizhou Wang on 9/24/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct SearchResult: View {
    @ObservedObject var viewModel: SearchResultViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            metaInfo
            Spacer().frame(height: 6)
            Text(viewModel.title)
                .font(.iosNativeH216Px)
            Spacer().frame(height: 10)
            ExpandableText(text: viewModel.bodyText, lineLimit: viewModel.lineLimit)
        }
        .frame(width: 335, alignment: .center)
        .padding(.all, 20)
    }
    
    var metaInfo: some View {
        HStack(alignment: .top) {
            Text("Posted xhrs ago")
                .foregroundColor(Color("brownGrey"))
                .font(.iosNativeP311Px)
            Spacer()
            TagSelected(text: viewModel.tagText)
        }
    }
}

struct SearchResult_Previews: PreviewProvider {
    static var previews: some View {
        SearchResult(viewModel: SearchResultViewModel())
    }
}
