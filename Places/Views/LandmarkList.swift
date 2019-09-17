//
//  LandmarkList.swift
//  Places
//
//  Created by Evgeniy Boytsov on 17.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI

struct LandmarksList: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.onlyFavorites) {
                    Text("Show favorites")
                }

                ForEach(userData.landmarks) { landmark in
                    if !self.userData.onlyFavorites || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
            .environmentObject(UserData())
    }
}
