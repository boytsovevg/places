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
            List(self.categories.keys.sorted(), id: \.self) { categoryName in
                NavigationLink(destination: Text(categoryName)) {
                    CategoryRow(categoryName: categoryName, landmarks: self.categories[categoryName]!)
                }
            }
                .navigationBarTitle(Text("Featured"))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
