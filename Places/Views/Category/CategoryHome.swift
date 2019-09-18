//
//  CategoryHome.swift
//  Places
//
//  Created by Evgeniy Boytsov on 18.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(self.categories.keys.sorted(), id: \.self) { categoryName in
                    CategoryRow(
                        categoryName: categoryName,
                        landmarks: self.categories[categoryName]!
                    )
                        .padding(.vertical, 15)
                }
            }
            .navigationBarTitle(Text("Categories"))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
