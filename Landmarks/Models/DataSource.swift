//
//  DataSource.swift
//  Landmarks
//
//  Created by William Porto on 29/05/21.
//

import Foundation
import Combine

final class DataSource: ObservableObject {
   @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String, decoder: JSONDecoder = JSONDecoder()) -> T {
    var data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Coudn't find \(filename)")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Coudn't load \(filename)")
    }
    
    do {
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Coudn't decode content of \(filename): \(error)")
    }
}
