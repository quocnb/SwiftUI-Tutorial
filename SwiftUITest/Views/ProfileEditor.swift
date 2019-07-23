//
//  ProfileEditor.swift
//  SwiftUITest
//
//  Created by Quoc Nguyen on 2019/07/23.
//  Copyright © 2019 Quoc Nguyen. All rights reserved.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile

    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }

    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                TextField("Username", text: $profile.username)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("Seasonal Photo").bold()
                SegmentedControl(selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases, id: \.self) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("Goal Date").bold()
                DatePicker("Goal Date", selection: $profile.goalDate, in: dateRange, displayedComponents: .date)
            }.padding(.top)
        }
    }
}

#if DEBUG
struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
#endif
