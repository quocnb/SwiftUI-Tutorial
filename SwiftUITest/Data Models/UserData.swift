//
//  UserData.swift
//  SwiftUITest
//
//  Created by Quoc Nguyen on 2019/07/06.
//  Copyright © 2019 Quoc Nguyen. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {

    let didChange = PassthroughSubject<UserData, Never>()

    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
