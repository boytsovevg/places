//
//  Badge.swift
//  Places
//
//  Created by Evgeniy Boytsov on 18.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI

struct Badge: View {
    static let symbolsInBadge = 8

    var badgeSymbols: some View {
        ForEach(0..<Self.symbolsInBadge) { num in
            RotatedBadgeSymbol(
                angle: .degrees(Double(num) / Double(Self.symbolsInBadge) * 360)
            )
                .opacity(0.6)
        }
    }

    var body: some View {
        ZStack {
            BadgeBackground()

            GeometryReader { geometry in
                self.badgeSymbols
                    .scaleEffect(1 / 4, anchor: .top)
                    .position(x: geometry.size.width / 2, y: geometry.size.height * (3 / 4))
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
