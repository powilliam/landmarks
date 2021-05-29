//
//  LandmarkList.swift
//  Landmarks
//
//  Created by William Porto on 29/05/21.
//

import SwiftUI

struct LandmarkList: View {
    @State private var onlyFavorites: Bool = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!onlyFavorites || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $onlyFavorites) {
                    Text("Favorites")
                        .font(.body)
                        .foregroundColor(.secondary)
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetails(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
