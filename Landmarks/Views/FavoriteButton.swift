//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by William Porto on 29/05/21.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isFavorite: Bool
    
    var body: some View {
        Button(action: { isFavorite.toggle() }) {
            Image(systemName: isFavorite ? "star.fill" : "star")
                .foregroundColor(isFavorite ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {    
    static var previews: some View {
        FavoriteButton(isFavorite: .constant(true))
    }
}
