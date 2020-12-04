//
//  UserViewModel.swift
//  FightPandemics
//
//  Created by Luko on 03/12/2020.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class UserViewModel: NSObject, ObservableObject {
    
    @Published var users: [User] = usersMockData
    
}
