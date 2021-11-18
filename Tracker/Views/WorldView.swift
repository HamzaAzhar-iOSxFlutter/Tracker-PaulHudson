//
//  WorldView.swift
//  Tracker
//
//  Created by Hamza_SCT on 11/18/21.
//

import MapKit
import SwiftUI

struct WorldView: View {
    
    //@State property wrapper makes the
    @EnvironmentObject var locations: Locations
    //SwiftUI uses the @State property wrapper to allow us to modify values inside a struct, which would normally not be allowed because structs are value types.
    //When we put @State before a property, we effectively move its storage out from our struct and into shared storage managed by SwiftUI. This means SwiftUI can destroy and recreate our struct whenever needed (and this can happen a lot!), without losing the state it was storing.
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.7022, longitude: -0.341324),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    var body: some View {
        //$ is used for binding
        //Binding allows us to read and write to the @State value
        Map(coordinateRegion: $region, annotationItems: locations.places) { location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination: ContentView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                }
            }//NavigationLink
        }
            .navigationTitle("Locations")
        .onAppear {
            print(self.locations)
        }
    }//body
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
