//
//  InsetMapView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 21.06.2022.
//

import SwiftUI
import MapKit
struct InsetMapView: View {
    // MARK: - PROPERTIES
    @State private var reqion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    
    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $reqion)
            .frame(height: 256)
            .cornerRadius(12)
            .overlay(
                NavigationLink(destination: MapView(), label: {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal,14)
                    .background(
                        Color.black.opacity(0.3)
                            .cornerRadius(12)
                    )
                    
                })//:NavigationLink
                    .padding(12),alignment: .topTrailing
                
            )//:Overlay
    }
}


// MARK: - PREVIEW
struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView().previewLayout(.sizeThatFits)
            .padding()
    }
}
