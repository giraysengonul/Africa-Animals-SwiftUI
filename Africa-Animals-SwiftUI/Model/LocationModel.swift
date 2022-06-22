//
//  LocationModel.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 22.06.2022.
//

import Foundation
import MapKit

struct NationalParkLocation : Codable , Identifiable {
    
    let id : String
    let name : String
    let image : String
    let latitude : Double
    let longitude : Double
    var location : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}
