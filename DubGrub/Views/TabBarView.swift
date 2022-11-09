//
//  TabBarView.swift
//  DubGrub
//
//  Created by Mikhail Kolkov on 11/9/22.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            LocationsMapView()
                .tabItem{Label("Map", systemImage: "map")}
            LocationsListView()
                .tabItem{Label("Locations", systemImage: "list.dash")}
            ProfileView()
                .tabItem{Label("Profile", systemImage: "person")}
        }
        .accentColor(.brandPrimary)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
