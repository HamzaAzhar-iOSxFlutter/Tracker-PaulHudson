//
//  TrackerApp.swift
//  Tracker
//
//  Created by Hamza_SCT on 11/17/21.
//

import SwiftUI

@main
struct TrackerApp: App {
    @StateObject var locations = Locations()
    @StateObject var xyz = Locations()
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }//NavigationView
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
            }//TabView
            .environmentObject(locations)
            //Making an environment object keeps the object intact for the entire app cycle
        }
    }
}
