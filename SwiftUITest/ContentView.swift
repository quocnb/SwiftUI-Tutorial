//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Quoc Nguyen on 2019/07/04.
//  Copyright © 2019 Quoc Nguyen. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        LandmarkList()
//        LandmarkDetail()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
