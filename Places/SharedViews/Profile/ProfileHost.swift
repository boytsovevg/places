//
//  ProfileHost.swift
//  Places
//
//  Created by Evgeniy Boytsov on 19.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var mode;
    @State var profile = Profile.default
    @State var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }

            if self.mode?.wrappedValue == .inactive {
                ProfileSummary(profile: self.profile)
            } else {
                ProfileEditor(profile: self.$draftProfile)
            }

        }
        .padding(.horizontal)
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
