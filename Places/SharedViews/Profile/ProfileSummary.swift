//
//  ProfileSummary.swift
//  Places
//
//  Created by Evgeniy Boytsov on 19.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile

    static let goalFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy"

        return formatter
    }()

    var body: some View {
        List{
            Text(profile.username)
                .bold()
                .font(.title)

            Text("Notifications is: \(self.profile.prefersNotifications ? "On" : "Off")")
            Text("Seasonal Photos: \(self.profile.seasonalPhoto.rawValue)")
            Text("Goal Date: \(self.profile.goalDate, formatter: Self.goalFormatter)")

            VStack(alignment: .leading) {
                Text("Completed badges")
                    .font(.headline)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        HikeBadge(name: "First Breath")

                        HikeBadge(name: "Walker")
                            .hueRotation(Angle(degrees: 150))

                        HikeBadge(name: "Mountain Killer")
                            .grayscale(0.7)
                            .hueRotation(Angle(degrees: 100))

                        HikeBadge(name: "Inspirer")
                            .grayscale(0.2)
                            .hueRotation(Angle(degrees: 55))
                    }
                }
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
