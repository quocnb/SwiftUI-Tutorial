//
//  CircleImage.swift
//  SwiftUITest
//
//  Created by Quoc Nguyen on 2019/07/05.
//  Copyright © 2019 Quoc Nguyen. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3.0))
            .shadow(radius: 10.0)
    }


}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
