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
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.landmarks) { l in
                        NavigationLink(destination: LandmarkDetail(landmark: l)) {
                            LandmarkPreview(preview: l)
                        }
                    }
                }
            }
        }
        .frame(height: 185)
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
