//
//  CategoryRow.swift
//  Places
//
//  Created by Evgeniy Boytsov on 18.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var landmarks: [Landmark]

    var body: some View {
        Text(self.categoryName)
            .font(.headline)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: landmarkData[0].category.rawValue,
            landmarks: Array(landmarkData.prefix(4))
        )
    }
}
