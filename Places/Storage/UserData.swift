//
//  UserData.swift
//  Places
//
//  Created by Evgeniy Boytsov on 17.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var landmarks = landmarkData
    @Published var onlyFavorites = false
    @Published var profile = Profile.default
}

