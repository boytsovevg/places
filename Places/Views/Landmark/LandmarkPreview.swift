//
//  LandmarkPreview.swift
//  Places
//
//  Created by Evgeniy Boytsov on 18.09.2019.
//  Copyright © 2019 boytsovevg. All rights reserved.
//

import SwiftUI

struct LandmarkPreview: View {
    var preview: Landmark

    var body: some View {
        VStack(alignment: .leading) {
            preview.image
                .renderingMode(.original)
                .resizable()
                .frame(
                    width: 150,
                    height: 150
                )
                .cornerRadius(5)
            Text(preview.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
    }
}

struct LandmarkPreview_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkPreview(preview: landmarkData[0])
    }
}
