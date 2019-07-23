//
//  ProfileHost.swift
//  SwiftUITest
//
//  Created by Quoc Nguyen on 2019/07/23.
//  Copyright © 2019 Quoc Nguyen. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {

    @Environment(\.editMode) var mode

    @State var profile = Profile.default
    @State var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if self.mode?.value == EditMode.active {
                    Button(action: {
                        self.profile = self.draftProfile
                        self.mode?.animation().value = .inactive
                    }) {
                        Text("Done")
                    }
                }
                Spacer()
                EditButton()
            }
            if self.mode?.value == .inactive {
                ProfileSummary(profile: self.profile)
            } else {
                ProfileEditor(profile: $draftProfile).onDisappear {
                    self.draftProfile = self.profile
                }
            }
        }
        .padding()
    }
}

#if DEBUG
struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
#endif
