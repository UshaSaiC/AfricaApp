//
//  MapView.swift
//  AfricaApp
//
//  Created by Usha Sai Chintha on 18/09/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.6743, longitude: 16.356467298)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        
        // Basic Map
        // Map(coordinateRegion: $region)
        
        // Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            // Option 1 : Pin on map.. old style. Always static
            // MapPin(coordinate: item.location, tint: .accentColor)
            
            // Option 2 : Marker.. new style. Always static
            // MapMarker(coordinate: item.location, tint: .accentColor)
            
            // Option 3 : Custom basic annotation(little interactive)
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
