//
//  CategoryHome.swift
//  Places
//
//  Created by Evgeniy Boytsov on 18.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    @State var showProfile = false;

    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }

    var profileButton: some View {
        Button(action: { self.showProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile Button"))
        }
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

                NavigationLink(destination: LandmarksList()) {
                    Text("See all")
                }
            }
            .navigationBarTitle(Text("Categories"))
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showProfile) {
                ProfileHost()
                    .padding()
            }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
