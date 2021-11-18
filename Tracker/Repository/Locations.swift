//
//  LocationRepository.swift
//  Tracker
//
//  Created by Hamza_SCT on 11/18/21.
//

import Foundation

//ObservableObject lets the swiftUI observe this class for changes
class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self
                                           , from: data)
    }
}
