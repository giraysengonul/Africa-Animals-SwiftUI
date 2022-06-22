//
//  MapView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 20.06.2022.
//

import SwiftUI
import MapKit
struct MapView: View {
    // MARK: - PROPERTIES
    @State private var region : MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations : [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        // MARK: -  Basic map
        //Map(coordinateRegion: $region)
        
        // MARK: - Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            //Pin old style
            // MapPin(coordinate: item.location, tint: .accentColor)
            
            // new style
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            //Custom basic annotation
            //            MapAnnotation(coordinate: item.location) {
            //                Image("logo")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 32, height: 32, alignment: .center)
            //            }//Annotation
            
            // custom advanced annotation
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
            
        }
        .overlay(
            HStack(alignment: .center, spacing: 12, content: {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3) {
                    HStack{
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                        
                    }
                    Divider()
                    HStack{
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                        
                    }
                }
            })
            .padding(.vertical,12)
            .padding(.horizontal,16)
            .background(Color.black.opacity(0.6).cornerRadius(12))
            .padding()
            ,alignment: .top
        )
    }
}


// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
