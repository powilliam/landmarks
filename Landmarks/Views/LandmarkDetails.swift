//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by William Porto on 29/05/21.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinates: landmark.locationCoordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 250)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
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
    static var previews: some View {
        LandmarkDetails(landmark: landmarks[0])
    }
}
