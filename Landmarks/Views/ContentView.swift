//
//  ContentView.swift
//  Landmarks
//
//  Created by William Porto on 29/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(DataSource())
    }
}
