//
//  ProfileHost.swift
//  Places
//
//  Created by Evgeniy Boytsov on 19.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @State var profile = Profile.default

    var body: some View {
        ProfileSummary(profile: self.profile)
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
