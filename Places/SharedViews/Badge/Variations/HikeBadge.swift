//
//  HikeBadge.swift
//  Places
//
//  Created by Evgeniy Boytsov on 19.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI

struct HikeBadge: View {
    var name: String

    var body: some View {
        VStack {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1/3)
                .frame(width: 100, height: 100)

            Text(name)
                .font(.caption)
                .accessibility(label: Text("Badge: \(name)"))
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "First Hiking")
    }
}
