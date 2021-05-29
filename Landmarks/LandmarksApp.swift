//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by William Porto on 29/05/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var dataSource = DataSource()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataSource)
        }
    }
}
