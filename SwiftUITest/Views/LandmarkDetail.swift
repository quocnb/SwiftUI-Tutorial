//
//  LandmarkDetail.swift
//  SwiftUITest
//
//  Created by Quoc Nguyen on 2019/07/05.
//  Copyright © 2019 Quoc Nguyen. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var body: some View {
        VStack {
            MapView().edgesIgnoringSafeArea(.top).frame(height: 300)
            CircleImage().offset(x: 0, y: -130).padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(.title).color(.red)
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline).color(.green)
                    Spacer()
                    Text("Califonia").font(.subheadline).color(.blue)
                }
            }.padding()
            Spacer()
        }
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
#endif
