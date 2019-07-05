//
//  LandmarkDetail.swift
//  SwiftUITest
//
//  Created by Quoc Nguyen on 2019/07/05.
//  Copyright © 2019 Quoc Nguyen. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var landmark: Landmark

    var body: some View {
        VStack {
            MapView(location: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top).frame(height: 300)
            CircleImage(image: landmark.image(forSize: 250)).offset(x: 0, y: -130).padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name).font(.title).color(.red)
                HStack {
                    Text(landmark.park).font(.subheadline).color(.green)
                    Spacer()
                    Text(landmark.state).font(.subheadline).color(.blue)
                }
            }.padding()
            Spacer()
        }.navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
