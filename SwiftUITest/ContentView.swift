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
        VStack(alignment: .leading) {
            Text("QuocNB").font(.title).color(.red)
            HStack {
                Text("Hello World").font(.subheadline).color(.green)
                Spacer()
                Text("I'm Vietnamese").font(.subheadline).color(.blue)
            }
        }.padding()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
