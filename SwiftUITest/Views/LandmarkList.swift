//
//  LandmarkList.swift
//  SwiftUITest
//
//  Created by Quoc Nguyen on 2019/07/05.
//  Copyright © 2019 Quoc Nguyen. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
//        List {
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[1])
//        }
//        List(landmarkData.identified(by: \.id)) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        List(landmarkData) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
