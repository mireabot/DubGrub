//
//  LocationsMapView.swift
//  DubGrub
//
//  Created by Mikhail Kolkov on 11/9/22.
//

import SwiftUI
import MapKit

struct LocationsMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.3271061, longitude: -121.8989672), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Image("ddg-map-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                    .shadow(radius: 10)
                
                Spacer()
            }
        }
    }
}

struct LocationsMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsMapView()
    }
}
