//
//  LocationsListView.swift
//  DubGrub
//
//  Created by Mikhail Kolkov on 11/9/22.
//

import SwiftUI

struct LocationsListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10){ item in
                    HStack {
                        Image("default-square-asset")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                            .clipShape(Circle())
                            .padding(.vertical, 10)
                        
                        Text("Location Text")
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Locations")
        }
    }
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
    }
}
