//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by William Porto on 29/05/21.
//

import SwiftUI

struct LandmarkDetails: View {
    @EnvironmentObject var dataSource: DataSource
    
    var landmark: Landmark
    var index: Int {
        dataSource.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinates: landmark.locationCoordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 250)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    
                    FavoriteButton(isFavorite: $dataSource.landmarks[index].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.city)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text(landmark.description)
                    .font(.body)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static let dataSource = DataSource()
    
    static var previews: some View {
        LandmarkDetails(landmark: dataSource.landmarks[0])
            .environmentObject(dataSource)
    }
}
