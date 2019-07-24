//
//  PageView.swift
//  SwiftUITest
//
//  Created by Quoc Nguyen on 2019/07/24.
//  Copyright © 2019 Quoc Nguyen. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage: Int = 1

    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPage: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
        }
    }
}

#if DEBUG
struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map {FeatureCard(landmark: $0)}).aspectRatio(1.5, contentMode: .fit)
    }
}
#endif
